       CHARACTER*15 FMT
       PRINT '(A) TEST',' NO.1'
       PRINT '(A'//') TEST',' NO.2'
       FMT='(A)  TEST'
       PRINT FMT,' NO.3'
       PRINT '(A   ) TEST',' NO.4'
       PRINT '(A   '//') TEST',' NO.5'
       FMT='(A     )  TEST'
       PRINT FMT,' NO.6'
       PRINT *,'PASS'
       END
