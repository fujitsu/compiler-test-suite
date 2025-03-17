        REAL A(10),BB(10),X(10),Y(10)
        EQUIVALENCE (A(1),B)
        DATA A /1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA BB/10*2./
        B = 1.
        DO 11 I = 1,10
          X(I) = B + BB(I)
          Y(I) = A(I) * I
11      CONTINUE
        PRINT *,X,Y
        STOP
        END
