           REAL A(50),B(50),C(50)
           INTEGER IA(50),IB(50),IC(50),IX(50),IY(50),II(50)

           DATA A/50*1.1/
           DATA B/50*-2.2/
           DATA C/50*3.3/
           DATA IY/50*-10/
           DATA II/10*2,10*1,10*2,10*1,10*3/

           DO 10 I = 1 , 50
             IF(II(I) .GE. 1 ) THEN
               IC(I) = INT(A(I))
               IB(I) = ABS(B(I)) + C(I)
               IX(I) = IC(I) + IB(I)
               IA(I) = IABS(IY(I)) + I
             ENDIF
 10        CONTINUE
           PRINT *,IA,IB,IC,IX
           END
