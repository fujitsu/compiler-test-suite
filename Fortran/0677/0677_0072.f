      INTEGER*4 A(512)/512*1/,B(512)/512*10/
      N=10
      DO 10 I=1,512
      IF(I.GT.5) THEN
      IF(N.GT.5) THEN
      A(I)=B(I)
      IF(B(I).GT.7.OR.I.GE.10) THEN
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
