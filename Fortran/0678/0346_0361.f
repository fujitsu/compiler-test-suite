          REAL   A(10),B(10),C(10),D(10)
          DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./,B/10*2./
          DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          DO 10 I = 1 , 10
            X = B(I) + C(I)
            Y = B(I) * C(I)
            A(I) = X
            A(I) = Y
            IF(L(I)) THEN
               B(I) = I
            ENDIF
            D(I) = A(I) * B(I)
 10       CONTINUE
            PRINT *,D
            END
