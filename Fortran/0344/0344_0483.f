      REAL*4 A(10,10),B(10,10),C(10,10),D(10)
      LOGICAL E(10),F(10),G(10)
      DATA A/100*0/,B/100*1/,C/100*2/,D/10*0/
      DATA E/5*.TRUE.,5*.FALSE./
      DATA F/3*.TRUE.,7*.FALSE./
      DATA G/6*.TRUE.,4*.FALSE./
      DO 10 I=1,10
         DO 20 J=1,10
            A(I,J) = B(I,J) + C(I,J)
            IF (E(I).AND.(F(I).OR.G(I))) D(I)=D(I)+1
   20    CONTINUE
   10 CONTINUE
      WRITE(6,99) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,99) (D(K),K=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
