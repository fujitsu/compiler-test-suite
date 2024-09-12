      INTEGER*4 A(32),B(32)/32*10/
      N=10
      DO 10 I=1,32
      A(I)=0
      IF(I.GT.15) THEN
      IF(N.GT.5) THEN
      A(I)=B(I)
      IF(I.GT.7) THEN
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
