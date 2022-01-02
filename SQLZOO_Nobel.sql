Change the query shown so that it displays nobel prizes for 1950.

=>SELECT YR, SUBJECT, WINNER FROM nobel WHERE YR = 1950

Show who won the 1962 prize for Literature.

=>SELECT WINNER FROM nobel WHERE YR = 1962 AND SUBJECT = 'LITERATURE'

Show the year and subject that won 'Albert Einstein' his prize.

=>SELECT YR, SUBJECT FROM nobel WHERE WINNER = 'ALBERT EINSTEIN'

Give the name of the 'Peace' winners since the year 2000, including 2000.

=>SELECT WINNER FROM nobel WHERE YR >= 2000 AND SUBJECT = 'PEACE'

Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

=>SELECT YR, SUBJECT, WINNER FROM nobel WHERE YR >= 1980 AND YR <= 1989 AND SUBJECT = 'LITERATURE'

Show all details of the presidential winners:

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama

=>SELECT * FROM nobel WHERE WINNER IN ('THEODORE ROOSEVELT','WOODROW WILSON','JIMMY CARTER','BARACK OBAMA')
  
Show the winners with first name John

=>SELECT WINNER FROM nobel WHERE WINNER LIKE 'JOHN%'

Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

=>SELECT YR , SUBJECT, WINNER FROM nobel WHERE SUBJECT = 'PHYSICS' AND YR = 1980 OR SUBJECT = 'CHEMISTRY' AND YR = 1984

Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

=>SELECT YR , SUBJECT, WINNER FROM nobel WHERE YR = 1980 AND SUBJECT NOT IN ('CHEMISTRY','MEDICINE')

Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

=>SELECT YR , SUBJECT, WINNER FROM nobel WHERE SUBJECT = 'MEDICINE' AND YR < 1910 OR SUBJECT = 'LITERATURE' AND YR >= 2004

Find all details of the prize won by PETER GRÜNBERG

=>SELECT * FROM nobel WHERE WINNER = 'PETER GRÜNBERG'

Find all details of the prize won by EUGENE O'NEILL

=>SELECT * FROM nobel WHERE WINNER = 'EUGENE O''NEILL'

List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

=>SELECT WINNER,YR, SUBJECT FROM nobel WHERE WINNER LIKE 'SIR%'

Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

=>SELECT WINNER,SUBJECT FROM nobel WHERE YR=1984 ORDER BY SUBJECT IN ('CHEMISTRY','PHYSICS') ,SUBJECT,WINNER 
