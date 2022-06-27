select count(nickname),
case
	when yearfounded > 2000 then 'Anos 2000'
	when yearfounded > 1990 then 'Década de 1990'
	when yearfounded > 1980 then 'Década de 1980'
	when yearfounded > 1970 then 'Década de 1970'
	when yearfounded > 1960 then 'Década de 1960'
	when yearfounded > 1950 then 'Década de 1950'
	when yearfounded > 1940 then 'Década de 1940'
 end as periodo
 from teams
 group by periodo
 order by yearfounded;