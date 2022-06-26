alter table nba.gamedetail modify team_id int;

alter table games modify team_id_home int;

alter table games modify team_id_away int;

alter table games modify home_team_id int;

alter table games modify visitor_team_id int;

alter table nba.gamedetail modify player_id int;

alter table ranking modify team_id int;

alter table gamedetail add foreign key (game_id) references games (game_id);

alter table gamedetail add foreign key (team_id) references teams (team_id);

alter table gamedetail add foreign key (player_id) references players (player_id);

alter table games add foreign key (home_team_id) references teams (team_id);

alter table games add foreign key (visitor_team_id) references teams (team_id);

alter table games add foreign key (team_id_home) references teams (team_id);

alter table games add foreign key (team_id_away) references teams (team_id);

alter table players add foreign key (team_id) references teams (team_id);

alter table ranking add foreign key (team_id) references teams (team_id);