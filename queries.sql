use mydb;

SELECT
    summoners.name, summoners.level, regions.name, ranks.lp, tiers.value, divisions.name
FROM summoners
JOIN regions ON summoners.regions_id = regions.id
JOIN ranks on summoners.ranks_id = ranks.id
JOIN tiers on ranks.tiers_id = tiers.id
JOIN divisions on ranks.divisions_id = divisions.id
ORDER BY summoners.name;




DELIMITER $$
DROP FUNCTION IF EXISTS GetFullSummonerRank;
CREATE FUNCTION GetFullSummonerRank(
    tier VARCHAR(10),
    division VARCHAR(45)
)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
    DECLARE summonerRank VARCHAR(56);
    SET summonerRank = CONCAT(division, ' ', tier);

RETURN summonerRank;
END$$

DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS getSummonerRankByName;
CREATE PROCEDURE getSummonerRankByName(srName varchar(255))
BEGIN
    SELECT summoners.name AS summoner_name, GetFullSummonerRank(tiers.value, divisions.name) AS 'rank', ranks.lp AS league_points
    FROM summoners
    JOIN regions ON summoners.regions_id = regions.id
    JOIN ranks on summoners.ranks_id = ranks.id
    JOIN tiers on ranks.tiers_id = tiers.id
    JOIN divisions on ranks.divisions_id = divisions.id
    WHERE summoners.name = srName;
end $$
DELIMITER ;



CREATE OR REPLACE VIEW ChampionBanRate as
SELECT c.name, COUNT(*) as ban_amount FROM teams_bans_champions
JOIN champions c on teams_bans_champions.champions_id = c.id
GROUP BY c.name
ORDER BY ban_amount DESC;


-- match kan kun have to teams

DELIMITER $$
DROP TRIGGER IF EXISTS EnsureOnlyTwoTeamPrMatch;
CREATE TRIGGER EnsureOnlyTwoTeamPrMatch
AFTER INSERT ON teams
    FOR EACH ROW
    BEGIN
        DECLARE team_count int;


        SET team_count = (SELECT COUNT(*) FROM teams WHERE teams.matches_id = NEW.matches_id);

        IF team_count > 2 THEN
            SIGNAL sqlstate '45000' SET MESSAGE_TEXT = 'YOU CAN ONLY ASSIGN TWO TEAMS PER MATCH!';
        END IF;
    END $$
DELIMITER ;

DELIMITER $$
DROP EVENT IF EXISTS dailyMatches;
CREATE EVENT dailyMatches
ON SCHEDULE EVERY 1 day
STARTS NOW() ends '2023-09-28'
DO BEGIN
    DECLARE matches_played int;
    SET matches_played = (SELECT COUNT(*) FROM matches WHERE FROM_UNIXTIME(game_creation, '%Y-%m-%d') = CURDATE());
    INSERT INTO audit_matches VALUE(0, matches_played, CURDATE());
END $$



CALL getSummonerRankByName('Dayns');
