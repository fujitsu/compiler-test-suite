       NAMELIST /NA/ I,J
       I=1
       J=2
       WRITE(27,NA)
       REWIND 27
       READ (27,NA)
       PRINT *,'PASS'
       END
