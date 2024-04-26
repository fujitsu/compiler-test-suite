      REAL*8 A2(100),D1(100),D2(100)
      A2=0
      D1=0
      D2=0
      N=10
      DO 11 I=1,10
      IF(D1(I).GT.10.0) THEN
      D2(I)=A2(I)**N
      ENDIF
11    CONTINUE
      WRITE(6,*) D2
      END
