# IPL Project MySQL



## Step 1 : Create Database

Create Database ipl;

## Step 2 : Switch to Database

Use ipl;

## Step 3 : Check local infile variable 

Show Variable Like "local_infile";

## Step 4 : Set local infile variable to 1

Set Global local_infile = 1;

## Step 5 : Exit the MySQL terminal

exit;

## Step 6 : Login again 

mysql -u root --local-infile=1 -p

## Step 7 : Switch to database

Use ipl;

## Step 8 : Create matches and deliveries tables

Create Table ipl.matches (id int, season int, city varchar(200), date date, team1 varchar(200),  team2 varchar(200), toss_winner varchar(200),  toss_decision varchar(200), result varchar(200), dl_applied int, winner varchar(200), win_by_runs int, win_wickets int, player_of_match varchar(200), venue1 varchar(200), umpire1 varchar(200), umpire2 varchar(200));

Create Table ipl.deliveries ( match_id int, inning int, batting_team varchar(200), bowling_team varchar(200), overs int, ball int, batsman varchar(200), non_striker varchar(200), bowler varchar(200), is_super_over int, wide_runs int, bye_runs int, legbye_runs int, noball_runs int, penalty_runs int, batsman_runs int, extra_runs int, total_runs float, player_dismissed varchar(200), dismissal_kind varchar(200), fielder varchar(200));

## Step 9 : Insert data in matches table

LOAD DATA LOCAL INFILE '/home/shivam/ipl_database/matches.csv' INTO TABLE ipl.matches FIELDS TERMINATED BY ',' IGNORE 1 LINES;

## Step 10 : Insert data in deliveries table 

LOAD DATA LOCAL INFILE '/home/shivam/ipl_database/deliveries.csv' INTO TABLE ipl.deliveries FIELDS TERMINATED BY ',' IGNORE 1 LINES;

## Step 11 : Execute the queries in queries.sql file


