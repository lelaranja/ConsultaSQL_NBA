#Quantos times foram fundados por década?
SELECT 
    COUNT(nickname),
    CASE
        WHEN yearfounded > 2000 THEN 'Anos 2000'
        WHEN yearfounded > 1990 THEN 'Década de 1990'
        WHEN yearfounded > 1980 THEN 'Década de 1980'
        WHEN yearfounded > 1970 THEN 'Década de 1970'
        WHEN yearfounded > 1960 THEN 'Década de 1960'
        WHEN yearfounded > 1950 THEN 'Década de 1950'
        WHEN yearfounded > 1940 THEN 'Década de 1940'
    END AS periodo
FROM
    teams
GROUP BY periodo
ORDER BY yearfounded;
 
#Houve diversidade de países de origem dos jogadores entre 2009 e 2019?
SELECT 
    *
FROM
    players;
SELECT 
    COUNT(players.Country) AS numberPlayers,
    players.SEASON,
    players.Country
FROM
    players
WHERE
    season = 2009 OR season = 2019
GROUP BY country , season
ORDER BY season , numberPlayers DESC;

#Dos top 10 times da temporada de 2019, qual a representatividade do jogador que mais pontuou?
select gamedetail.player_name as Jogador, gamedetail.team_city as TeamCity, sum(gamedetail.pts) as Pontos, games.season as Ano
from gamedetail
inner join games on games.GAME_ID = gamedetail.GAME_ID
where games.season = 2019 
group by jogador, ano
order by pontos desc limit 40;

select gamedetail.team_city as TeamCity, sum(gamedetail.pts) as Pontos, games.season as Ano
from gamedetail
inner join games on games.GAME_ID = gamedetail.GAME_ID
where games.season = 2019
group by Teamcity, ano
order by pontos desc limit 10;