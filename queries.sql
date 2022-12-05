-- Scenario 1 → Number of matches played per year of all the years in IPL
select season, count(season) from ipl.matches group by season;

-- Scenario 2 → Number of matches won of all teams over all the years of IPL
select winner as team, count(winner) from matches where winner!='' group by winner;

-- Scenario 3 → For the year 2016 get the extra runs conceded per team
select bowling_team as team, sum(extra_runs) as extra_runs from deliveries join matches on deliveries.match_id = matches.id where season = 2016 group by bowling_team;

-- Scenario 4 → For the year 2015 get the top economical bowler
select bowler, sum(total_runs)/((count(bowler)/6.0)+((mod(count(bowler),6.0))/6.0)) as economy from deliveries join matches on deliveries.match_id = matches.id where matches.season = 2015 group by bowler order by economy limit 1;

