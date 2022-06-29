CREATE DATABASE NBA;
USE NBA;
CREATE TABLE RANKING (
TEAM_ID VARCHAR(15),
LEAGUE_ID VARCHAR(2),
SEASON_ID VARCHAR(6),
STANDINGSDATE DATE,
CONFERENCE VARCHAR(15),
TEAM VARCHAR(30),
G INT,
W INT,
L INT,
W_PCT FLOAT,
HOME_RECORD VARCHAR(10),
ROAD_RECORD VARCHAR(10));

-- Criando chave estrangeira para o campo 'TEAM_ID'
ALTER TABLE RANKING ADD CONSTRAINT fk_TEAM_ID FOREIGN KEY (TEAM_ID)
REFERENCES TEAMS (TEAM_ID);

-- Alterando o tipo de dado do campo TEAM_ID da tabela RANKING
ALTER TABLE RANKING MODIFY TEAM_ID INT;

-- continuou o mesmo erro na tentativa de criar a FK


-- ------------------- QUERIES -------------------------
-- Nº de jogos, vitórias, derrotas, home records e road record na temporada 2019-20
-- Essa não é a última data da temporada, pois ao todo, ao menos nos play-off, LA Lakers tiveram 71 jogos (52 W e 19 L) Fonte: https://www.basketball-reference.com/leagues/NBA_2020_standings.html
select * from ranking where SEASON_ID = '22019' AND STANDINGSDATE = '2020-03-01';                                          

-- puxar pela ultima data do maior valor
select ranking.team, teams.nickname, teams.abbreviation, ranking.SEASON_ID as Season, ranking.G as Games, ranking.W as Wins, ranking.L as Loses
from ranking
inner join teams on ranking.team_id = teams.team_id
where ranking.SEASON_ID = 22019
group by team
order by W desc limit 5;

-- para saber quantas temporadas tem na tabela, ordenado do passado ao presente
select SEASON_ID, STANDINGSDATE from ranking group by SEASON_ID order by STANDINGSDATE;


select * from ranking where SEASON_ID = '22003' and TEAM = 'L.A. Lakers';