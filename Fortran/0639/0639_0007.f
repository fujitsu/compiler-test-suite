           REAL A(50),B(50),C(50)
           INTEGER IA(50),IB(50),IC(50),IX(50),IY(50)

           DATA A/50*1.1/
           DATA B/50*-2.2/
           DATA C/50*3.3/
           DATA IY/50*-10/

           DO 10 I = 1 , 50
             IC(I) = INT(A(I))
             IB(I) = ABS(B(I)) + C(I)
             IX(I) = IC(I) + IB(I)
             IA(I) = IABS(IY(I)) + I
 10        CONTINUE
           PRINT *,IA,IB,IC,IX
           END
