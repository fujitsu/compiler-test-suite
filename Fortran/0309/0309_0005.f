      PARAMETER(IANS=21)
      PRINT *,'START'
      CALL T1(IANS)
      PRINT *,'END'
      END
      SUBROUTINE T1(ANS)
      INTEGER ANS
      I=1
      J=0
      L=IFUN(1)
      if (L.EQ.0) GOTO 11
 10   I=I+1
 11   L=L+10
      IF (I < 100.AND.J.EQ.0) THEN
         I=I+1
         J=1
         L=L+1
         GOTO 10
      ELSE 
         I=I+1
         J=0
         L=L+1
         IF (L > 100) GOTO 999
         GOTO 10
      ENDIF
 999  IF (I.EQ.ANS) THEN
         WRITE (6,*,ERR=55) 'OK I=',I
      ELSE
         WRITE (6,*,ERR=55) 'NG I=',I,'ANS=',ANS
      ENDIF
      PRINT *,'T1 END'
      GOTO 66
 55   PRINT *,'T1 END with ERROR'
 66   END
      INTEGER FUNCTION IFUN(II)
      IFUN=II
      END
