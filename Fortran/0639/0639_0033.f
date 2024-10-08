           REAL   A1(50),B1(50),C1(50),D1(50),X1,Y1(50)
           REAL*8 B2(50),C2(50),D2(50),X2,Y2(50)
           REAL   A2(50),A3(50),A4(50),A5(50),A6(50)
         DATA B1/10*10.D0,10*20.D0,10*30.D0,10*40.D0,10*50.D0/
           DATA C1/10*2.D0,10*4.D0,10*7.D0,10*2.D0,10*4.D0/
           DATA D1/10*3.D0,10*5.D0,10*8.D0,10*3.D0,10*3.D0/
           DATA Y1/10*4.D0,10*6.D0,10*9.D0,10*4.D0,10*2.D0/
           DATA X1/3.0/
           DATA A2/10*1.0D0,10*2.0D0,10*3.0D0,10*4.0D0,10*5.0D0/
         DATA B2/10*20.0D0,10*30.0D0,10*20.0D0,10*50.0D0,10*40.0D0/
           DATA C2/10*1.0D0,10*4.0D0,10*1.0D0,10*6.0D0,10*3.0D0/
           DATA D2/10*4.0D0,10*5.0D0,10*9.0D0,10*7.0D0,10*2.0D0/
           DATA Y2/10*1.0D0,10*6.0D0,10*8.0D0,10*8.0D0,10*1.0D0/
           DATA X2/6.0D0/
           COMPLEX CC

           A1 = 0
           A3 = 0
           A4 = 0
           A5 = 0
           A6 = 0

           X1=1.
           X2=1.+1.0
           S1=1.
           S2=10.
           RR=4.
           CC=(2.,3.)

           DO 10 I = 1 , 50
             IF( I .LE. 49 ) THEN
               A1(I) = S1    / B1(I) / C1(I) / Y1(I)
               A2(I) = B2(I) / S2 / C2(I) / Y2(I)
               A3(I) = (S1*B2(I)) / C1(I) / D1(I)
               A4(I) = B2(I) / S1 / B1(I) / S2
               A5(I) = (B1(I)*S1) / (C2(I)*S2) / Y1(I) / D2(I)
               A6(I) = B1(I) / C2(I) / Y1(I) / D2(I)
             ENDIF
 10        CONTINUE

           WRITE(6,11) A1
           WRITE(6,11) A2
           WRITE(6,11) A3
           WRITE(6,11) A4
           WRITE(6,11) A5
           WRITE(6,11) A6
 11        FORMAT(1H ,4(E13.6,3X))
           END
