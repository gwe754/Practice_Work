yr	subject	winner
1960	Chemistry	Willard F. Libby
1960	Literature	Saint-John Perse
1960	Medicine	Sir Frank Macfarlane Burnet
1960	Medicine	Peter Madawar

1  Change the query shown so that it displays Nobel prizes for 1950.

select * from nobel where yr=1950

2 Show who won the 1962 prize for literature.

select winner from nobel where yr=1962 and subject='literature'

3 Show the year and subject that won 'Albert Einstein' his prize.

select yr,subject from nobel where winner='Albert Einstein'

4 Give the name of the 'peace' winners since the year 2000, including 2000.

select winner from nobel where subject='peace' and yr>=2000

5 Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.

select * from nobel where subject='literature' and yr between 1980 and 1989

6 Show all details of the presidential winners:

Theodore Roosevelt
Thomas Woodrow Wilson
Jimmy Carter
Barack Obama

select * from nobel where winner in('Theodore Roosevelt',
'Thomas Woodrow Wilson',
'Jimmy Carter',
'Barack Obama') 

7 Show the winners with first name John

select winner from nobel where winner like 'John %'

8 Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

select * from nobel where yr<1910 and subject='Medicine' or yr>=2004 and subject='Literature'

9 Find all details of the prize won by PETER GRÜNBERG

select * from nobel where winner='PETER GRUNBERG'

10 Find all details of the prize won by EUGENE O'NEILL

select * from nobel where winner='EUGENE O''NEILL'

11 ist the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

select winner,yr,subject from nobel 
where winner like 'Sir %'
order by yr desc, winner