      PROGRAM MAIN
      I=LGT('ABC','ABC')
      J=LGT('ABC'//'ABC' // 'ABC'//'ABC','ABC')
      IF (I.NE.0) PRINT *,'FAIL'
      IF (J.NE.1) PRINT *,'FAIL'
      IF (LGT('ABC','ABC').NEQV..FALSE.) PRINT *,'FAIL'
      IF (LGT('ABC'//'ABC' // 'ABC'//'ABC','ABC').NEQV..TRUE.)
     1  PRINT *,'FAIL'
      PRINT *,'PASS'
      STOP
      END
