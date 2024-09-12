          REAL Z(30),X(30)
          REAL A(10),B(10),C(10)
          REAL R1(10),R2(10)
          EQUIVALENCE (Z(1),A(1)),(Z(11),B(1)),(Z(21),C(1))
          DATA X/30*2.0/
          DATA Z/30*1.0/
          DATA R1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA R2/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
          LOGICAL LSW

          DO 10 I = 1 , 10 , 2
            Z(I) = I
            Z(I+10) = I * 2
            Z(I+20) = I * 3
 10      CONTINUE

         DO 20 I = 1 , 10
            LSW = R1(I) .GT. R2(I)
            IF( LSW ) C(I) = R1(I) + R2(I)
            IF( LSW ) Z(I) = R1(I) + R2(I)
            X(I) = C(I) - R1(I)
            IF( LSW ) A(I) = B(I) - R2(I)
            IF( LSW ) X(I) = Z(I) - B(I)
 20      CONTINUE

         DO 30 I = 11 , 20
            LSW = R1(I-10) .GT. R2(I-10)
            IF( LSW ) C(I-10) = R1(I-10) - R2(I-10)
            IF( LSW ) Z(I) = R1(I-10) - R2(I-10)
            X(I) = C(I-10) + R1(I-10)
            IF( I .GE.15 ) X(I+10) = X(I) - A(I-10)
            IF( LSW ) A(I-10) = B(I-10) + R2(I-10)
            IF( LSW ) X(I) = Z(I) + B(I-10)
 30      CONTINUE
            PRINT *,X
            END
