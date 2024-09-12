           REAL   A1(4096),B1(4096),C1(4096)
           DATA X1/3.0/
           DATA A1/4096*0.0D0/

           DO 10 I = 1 , 4096
             B1(I)=I
             C1(I)=I
             IF( I.LE. 1000) THEN
               A1(I) = B1(I) + X1 + C1(I)
             ELSE
               A1(I) = B1(I) - X1 - C1(I)
             ENDIF
 10        CONTINUE
           PRINT *,A1
           END
