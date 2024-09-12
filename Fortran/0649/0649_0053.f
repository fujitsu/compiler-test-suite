       NAMELIST /NA/ I,J
       I=1
       J=2
       WRITE(2,NA)
       REWIND 2
       READ (2,NA)
       PRINT *,'PASS'
       END
