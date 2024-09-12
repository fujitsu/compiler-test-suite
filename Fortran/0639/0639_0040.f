           REAL*8 A1(50),B1(50),C1(50),D1(50),X1,Y1(50)
           REAL*8 A2(50),B2(50),C2(50),D2(50),X2,Y2(50),A3(50)
           REAL*8 A4(50),A5(50),A6(50)
           DATA B1/50*1.0D0/
           DATA C1/50*1.0D0/
           DATA D1/50*1.0D0/
           DATA Y1/50*1.0D0/
           DATA X1/3.0/
           DATA A2/50*1.0D0/
           DATA B2/50*1.0D0/
           DATA C2/50*1.0D0/
           DATA D2/50*1.0D0/
           DATA Y2/50*1.0D0/
           DATA X2/1.0D0/
           COMPLEX CC

           X1=1.
           X2=1.
           S1=1.
           S2=1.
           RR=1.
           CC=(1.,1.)

           DO 10 I = 1 , 50
             IF( I .LE. 22 ) THEN
               A1(I) = S1    / B1(I) / C1(I) / Y1(I)
     E               / (B1(I)*1.0) / (C2(I)*1.0 ) / Y1(I) / D2(I)
               A2(I) = B2(I) / S2 / C2(I) / Y2(I)
     E               / B2(I) / 1.0/ B1(I) / S2
               A3(I) = (S1*B2(I)) / C1(I) / D1(I)
               A4(I) = B2(I) / 1.0/ B1(I) / S2
               A5(I) = (B1(I)*S1 ) / (C2(I)*1.0 ) / Y1(I) / D2(I)
               A6(I) = B1(I) / C2(I) / Y1(I) / D2(I)
     E               / D2(I) / Y2(I) / C1(I) / B2(I)
             ELSE
               A6(I) = S1    / B1(I) / C1(I) / Y1(I)
     E               / (B1(I)*1.0) / (C2(I)*1.0 ) / Y1(I) / D2(I)
               A5(I) = B2(I) / S2 / C2(I) / Y2(I)
     E               / B2(I) / 1.0/ B1(I) / S2
               A4(I) = (S1*B2(I)) / C1(I) / D1(I)
               A3(I) = B2(I) / 1.0/ B1(I) / S2
               A2(I) = (B1(I)*S1 ) / (C2(I)*1.0 ) / Y1(I) / D2(I)
               A1(I) = B1(I) / C2(I) / Y1(I) / D2(I)
     E               / D2(I) / Y2(I) / C1(I) / B2(I)
             ENDIF
 10        CONTINUE
           WRITE(6,11) A1
           WRITE(6,11) A2
           WRITE(6,11) A3
           WRITE(6,11) A4
           WRITE(6,11) A5
           WRITE(6,11) A6
 11        FORMAT(1H ,2(D20.12,3X))
           END
