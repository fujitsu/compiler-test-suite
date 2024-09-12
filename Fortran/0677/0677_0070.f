      INTEGER*4 A(128)/128*0/,B(128)/128*10/
      N=10
      DO 10 I=1,128
      IF(I.GE.50) THEN
      IF(N.LT.5) THEN
      A(I)=B(I)
      IF(I.GT.70) THEN
      A(I)=B(I)*5
      ELSE
      A(I)=B(I)*3
      ENDIF
      ELSE
      A(I)=B(I)*9
      ENDIF
      ENDIF
10    CONTINUE
      WRITE(6,*) A,B
      STOP
      END
