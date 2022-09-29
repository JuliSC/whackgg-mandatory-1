use mydb;



insert into teams
    (matchWon, matches_id)
VALUE (FALSE, 1);
INSERT INTO teams
    (matchWon, matches_id)
VALUES
    (false, 1), # Team with following participants:
            # "YgWkA9G8c46R5VY6Y1vZNIMIcUMOrxS8_mDShj6QymF6-lkWbgtYhcdlLTYHsDBcf6x8nHEN5KmSiw",
            #"P7VPd0GjbYUhqsMwVd0ui47E9erkwnqQIpZ5Wuurcb-yU3w-jI5CizRVT6EOiVMY15Luk9eidpNimg",
            #"Ay0zvDTAXlr19x0jm25bsbrwCMdix4s9xsKIyVCZDDcC_kP-z3oQazcwatYADWq5JVdonZ2KmYcr5g",
            #"d-p-bX20m70RWuCtCcOZxI35nb9NahmifzE-TVjLNaxf0Stplkj8xHDyFyloufShpjfRqNnItsbGqg",
            #"hyqswZiXXd0Qs3XIw-CMMYJwyK30uS8K_Z5bVdNEiKB4Va0PoGaAmkxrYf82oB1Ye45RtNUl9nwnjw",

    (true, 1), # Team with following participants:
            #"a-SFDAxvs25TkTW6L35zAdGdTWLF4ZMBg5u2grt8vQc0-OUcAu3pn1t3xIO_wdj_PkmDuNVG6uEP2w",
            #"N6JWMq_wJS2QG-nhA795b-ZwnsXwphXSkVdng4LwuG5aMkZ05RvTHrDqAGeXL0JQGWLH1N0R5ha2kA",
            #"noG5VEunmS7OM-upFIS4kdSv_WEGeBeZjUmDEkP838LfZ1MRcekKXhiJgTT43-sS3XZOOQ_LP9exyQ",
            #"VqoFrG9SvTGW5ZoQUPGfacsOaqRYQhaTQlPB6vxTyNLL0fMLW3tTi7iKq-ORBZraf3515bFLma7Sow",
            #"bfkQJlJDJiK9_a87O9tQeAfpnb0CkdqtXoH4jHzZfHcBXDUUZD05k9UJ9OUGJTWdvI1LK4l-mPfw0Q"

    (false, 2), # Team with following participants:
            #"zLonuWOn_FRlGramlLxmo2t6lQmchoyyRJHcBL9jmo5vQCc09E_rL0k1Geo1YdZ9OfNNRbOWhr5Dlw",
            #"2WG9_zsA62_WsHPFaOyQm9AvyIezIwj9TpmMQtCxYtwGPqLnKsU6aFi4-Ma3rBFDgcKujoc2LOlM4A",
            #"a3CuCtnBzNBVzemBfWXcZGpI2yZCbgDIB839fnRa-BlYpzeZ9uul-pp_K8VQ7J5g8AUOv-uv4smsiA",
            #"tNPoRqjsn2cGa0mOlqQVWCGdROJE7HLwUh7EFRwhwJyCO2giVyjoh7nzOBzwZv4hM1e4Z-9s76INvQ",
            #"8FuhnMo3BTDUZLRYprTqAO73_W1-aU2ud-jbBio52vwuYAifi44THQLVIVwCU3p0-wqZLa5MX32Lwg",

    (true, 2); # Team with following participants
            #"J2pJxosa7Wx5cXzQv-iq0DnsOMMjInM6osSNZxTDOLFHVJlDnOroY0nFuCo9OjYb_3gSMrPZrUThRQ",
            #"BylfswLVovPOuqsXdgdB2F8QR5DNtbngljX3nxunqe_oiiwWwJb1JmPdR3fuPAFJFivA_Dsc00_TqA",
            #"QfA68pfec98j2rKNkloMDSi3HBX8wkMLShX8xOVLd9_knrcRZIUlZ87228MuqnDJH80x2nLeFXv-EQ",
            #"Ay0zvDTAXlr19x0jm25bsbrwCMdix4s9xsKIyVCZDDcC_kP-z3oQazcwatYADWq5JVdonZ2KmYcr5g",
            #"cWUkFZRTjOyNQCrSvzH-j4o-cKahKD4eTaMToieU9fJOrMwBcRtlz7Jp-729D8OOo34tYFat9vhrbQ"


# Har brugt champions IDs fra Riot docs: http://ddragon.leagueoflegends.com/cdn/12.18.1/data/en_US/champion.json
INSERT INTO teams_bans_champions
    # Det er lidt whack, men teams_matches_id er kommet med i det her table.
    # TODO: Undersøg om vi burde fjerne teams_matches_id
    (teams_id, teams_matches_id, champions_id)
VALUES
    #(1, 1, -1), # han bannede "none" Hvordan håndterer vi det?
    (1, 1, 360),
    (1, 1, 35),
    (1, 1, 114),
    (1, 1, 11),
    (2, 1, 200),
    (2, 1, 33),
    (2, 1, 67),
    (2, 1, 777),
    (2, 1, 120),
    (3, 2, 2),
    (3, 2, 200),
    (3, 2, 77),
    (3, 2, 517),
    (3, 2, 55),
    (4, 2, 120),
    (4, 2, 122),
    (4, 2, 77),
    (4, 2, 40),
    (4, 2, 119);

INSERT INTO gamemodes
    (name)
VALUES
    ('CLASSIC'),
    ('ODIN'),
    ('ARAM'),
    ('TUTORIAL'),
    ('URF'),
    ('DOOMBOTSTEEMO'),
    ('ONEFORALL'),
    ('ASCENSION'),
    ('FIRSTBLOOD'),
    ('KINGPORO'),
    ('SIEGE'),
    ('ASSASSINATE'),
    ('ARSR'),
    ('DARKSTAR'),
    ('STARGUARDIAN'),
    ('PROJECT'),
    ('GAMEMODEX'),
    ('ODYSSEY'),
    ('NEXUSBLITZ'),
    ('ULTBOOK');


INSERT INTO matches
    (duration, gamemodes_id, game_creation)
VALUES
    (1590, 20, 1664189971916), # match 1 id: EUW1_6080598533
    (1435, 1, 1664184477742);  # match 2 id: EUW1_6080513402


INSERT INTO positions
    (name)
VALUES
    ('MIDDLE'),
    ('TOP'),
    ('BOTTOM'),
    ('JUNGLE'),
    ('UTILITY'),
    # APEX?
    ('APEX'),
    # MAYBE FOR ARAM GAMES
    ('NONE');

INSERT INTO divisions
    (name)
VALUES
    ('IRON'),
    ('BRONZE'),
    ('SLIVER'),
    ('GOLD'),
    ('PLATINUM'),
    ('DIAMOND'),
    ('MASTER'),
    ('GRANDMASTER'),
    ('CHALLENGER'),
    (null);

INSERT INTO tiers
    (value)
VALUES
    ('I'),
    ('II'),
    ('III'),
    ('IV'),
    (null);

truncate champions;

INSERT INTO champions
    (name)
VALUES
    # Banned by team1 in game1
    ('Caitlyn'),
    ('Katarina'),
    ('Yorick'),
    ('Warwick'),
    ('none'),
    ('Samira'),
    ('Shaco'),
    ('Fiora'),
    ('Master Yi'),

    # Banned by team2 in game1
    ('Bel''Veth'),
    ('Rammus'),
    ('Vayne'),
    ('Yone'),
    ('Hecarim'),

    # Banned by team1 in game2
    ('Olaf'),
    # Bel'Veth
    ('Udyr'),
    ('Sylas'),

    # Banned by team2 in game2
    # Hecarim
    ('Darius'),
    # Udyr
    ('Janna'),
    ('Draven');

INSERT INTO teams_bans_champions
    # Det er lidt whack, men teams_matches_id er kommet med i det her table.
    # TODO: Undersøg om vi burde fjerne teams_matches_id
    (teams_id, teams_matches_id, champions_id)
VALUES
    (1, 1, 5), # han bannede "none" Hvordan håndterer vi det?
    (1, 1, 6),
    (1, 1, 7),
    (1, 1, 8),
    (1, 1, 9),
    (2, 1, 10),
    (2, 1, 11),
    (2, 1, 12),
    (2, 1, 13),
    (2, 1, 14),
    (3, 2, 15),
    (3, 2, 10),
    (3, 2, 16),
    (3, 2, 17),
    (3, 2, 2),
    (4, 2, 14),
    (4, 2, 18),
    (4, 2, 16),
    (4, 2, 19),
    (4, 2, 20);

INSERT INTO regions
    (name)
VALUES
    ('EUW1'),
    ('BR1'),
    ('EUN1'),
    ('JP1'),
    ('KR'),
    ('LA1'),
    ('LA2'),
    ('NA1'),
    ('OC1'),
    ('RU'),
    ('TR1');



INSERT INTO ranks
    (lp, divisions_id, tiers_id)
VALUES
    #KHK TLamp
    (1030, 9, 1),
    #Dayns
    (78, 5, 1),
    # DrÎ±chun
    (780, 8, 1);

INSERT INTO summoners
    (name, level, icon, regions_id, ranks_id)
VALUES
    #In game 1 & 2.
    ('KHK TLamp', 685, 1389, 1, 1),
    #In game 1 only
    ('Dayns', 664, 549, 1, 2),
    ## Summoner below isn't included in GAME 1;
    # Summoner is only in GAME 2
    ('DrÎ±chun', 419, 2092, 1, 3);

-- Game 1 - Most of the players have SR_FLEX and SOLO_5x5; Both are applied

#TODO : reinsert with RANKED_SOLO_5x5 ranks ONLY

/*INSERT INTO ranks
    (lp, divisions_id, tiers_id)
VALUES
    (null, 10, 5),
    (70, 4, 4),
    (69, 4, 2),
    (10, 6, 4),
    (97, 6, 3),
    (34, 3,3),
    (75, 6,2),
    (78, 5, 1),
    (1063, 9, 1),
    (87, 6, 1),
    (59, 3, 2);*/

-- Game 2


## Data changed since yesterday.
/*INSERT INTO ranks
    (lp, divisions_id, tiers_id)
VALUES
    (748, 8, 1),
    (595, 7, 1),
    (100, 6, 1),
    (809, 8, 1),
    (475, 7, 1),
    # KHK TLamp
    (1088, 9, 1),
    (840, 8,1), (707, 8, 1),
    (939, 8, 1),
    (820, 8, 1);*/

## TODO : Teams_matches_id .. ?

INSERT INTO participants
    (id, assists, deaths,
     kills,
     baronkills,
     consumablePurchased,
     damageDealtToBuildings,
     damageDealtToObjectives,
     damageDealtToTurrets,
     damageSelfMitigated,
     doubleKills,
     tripleKills,
     quadraKills,
     pentaKills,
     teams_id,
     summoners_id,
     positions_id,
     champions_id)
VALUES
    # KHK plays Katarina
    (0, 4, 11, 3, 0, 0, 0, 1311, 0, 19712, 0, 0, 0, 0, 1, 1, 1, 2),
    # KHK plays Caitlyn
    (0, 8, 1, 10, 0, 6, 16219, 27796, 16219, 7717, 1, 0, 0, 0, 4, 1, 3, 1),
    # Drachun plays
    (0, 1, 4, 2, 0, 1, 711, 1844, 711, 18197, 0, 0, 0, 0, 3, 3, 2, 4),
    # Dayns
    (0, 3, 7, 5, 0, 1, 8397, 20281, 8397, 38940, 0, 0, 0, 0, 1, 2, 2, 4);


delete from participants;
alter table participants AUTO_INCREMENT = 1;


