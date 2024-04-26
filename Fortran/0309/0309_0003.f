      PARAMETER(ANS=21)
      I=1
      J=0
      PRINT *,'START'
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
         PRINT *,'OK'
      ELSE
         PRINT *,'NG'
      ENDIF
      PRINT *,'END'
      END
      INTEGER FUNCTION IFUN(II)
      IFUN=II
      END
