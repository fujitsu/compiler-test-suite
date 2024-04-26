      REAL A(10),B(10),C(10),D(10)
      REAL E(10),F(10),G(10),H(10)
      DATA A/0,0,0,0,0,6,7,0,0,10/
      DATA B/0,0,0,2,0,3,4,5,2,9/
      DATA C/0,0,0,2,0,3,4,5,2,9/
      DATA D,E/10*0.,10*0./
      DATA F,G,H/10*2.,10*5.,10*3/
      DATA N,M/1,10/

      DO 10 I=N,M
        IF (A(1).EQ.0) THEN
          IF ((B(I).GT.0).AND.(C(I).GT.0)) THEN
             E(I)=F(I)+E(I)
             D(I)=F(I)+E(I)
          ELSE
             E(I)=F(I)*G(I)+H(I)
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,1) D,E
 1    FORMAT(5F10.5)
      STOP
      END
