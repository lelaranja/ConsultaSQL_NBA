create database nba; use nba;

create table players(
	player_name varchar (255),
    team_id int,
    player_id int primary key,
    season varchar (255)
);
select * from players;

create table teams (
	league_id int,
    team_id int primary key,
    min_year varchar(4),
    max_year varchar(4),
    abbreviation varchar(3),
    nickname varchar(255),
    yearfounded varchar(4),
    city varchar(255),
    arena varchar(255),
    arenacapacity int,
    team_owner varchar(255),
    generalmanager varchar(255),
    headcoach varchar(255),
    dleagueffiliation varchar(255)
);

select * from teams;