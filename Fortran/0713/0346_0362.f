          REAL   A(10,10),B(10),C(10),D(10)
          DATA A/100*1.0/,B/10*2.0/
          DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          J = 1
          DO 10 I = 1 , 10
            X = B(I) + C(I)
            A(J,I) = X
            IF(L(I)) THEN
               J = J + 1
            ENDIF
            D(I) = A(J,I) * B(I)
 10       CONTINUE
            PRINT *,D
            END
