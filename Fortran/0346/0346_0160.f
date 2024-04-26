        REAL A(10),BB(10)
        EQUIVALENCE (A(1),B)
        DATA BB/10*2./
        B = 1.
        DO 11 I = 1,10
          A(I) = B + BB(I)
11      CONTINUE
        PRINT *,A
        STOP
        END
