       COMPLEX*16 A1(50),B1(50),C1(50),D1(50),X1,Y1(50)
       COMPLEX*16 A2(50),B2(50),C2(50),D2(50),X2,Y2(50),A3(50)
       COMPLEX*16 A4(50),A5(50)
           DATA A1/10*(2.D0,1.D0),10*(2.D0,5.D0),10*(3.D0,4.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA B1/10*(1.D0,2.D0),10*(2.D0,4.D0),10*(3.D0,4.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA C1/10*(1.D0,2.D0),10*(3.D0,1.D0),10*(3.D0,4.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA D1/10*(20.D0,1.D0),10*(20.D0,3.D0),10*(30.D0,4.D0)
     E                                          ,20*(10.D0,4.D0)/
           DATA Y1/10*(1.D0,2.D0),10*(3.D0,1.D0),10*(3.D0,4.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA X1/(3.0D0,2.0D0)/
           DATA A2/10*(2.D0,1.D0),10*(2.D0,3.D0),10*(2.D0,1.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA B2/10*(5.D0,1.D0),10*(3.D0,1.D0),10*(4.D0,1.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA C2/10*(3.D0,1.D0),10*(2.D0,2.D0),10*(8.D0,1.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA D2/10*(1.D0,3.D0),10*(2.D0,4.D0),10*(2.D0,1.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA Y2/10*(1.D0,2.D0),10*(2.D0,1.D0),10*(4.D0,1.D0)
     E                                          ,20*(1.D0,4.D0)/
           DATA X2/(6.0D0,2.0D0)/
           COMPLEX*16 CC

           J=1
           M=10
           SM=4.
           RR=4.
           CC=(2.D0,3.D0)

           DO 10 I = 1 , 50
               A1(I) = B1(I) + X1 + C1(I) - Y1(J) + D1(I) + 1.0
               A2(I) = B2(I) - X2 + C2(I) + Y2(M) + D2(I) - 2.0D0
               A3(I) = B2(I) + X1 + C1(I) * Y2(J) + D1(I) + 2.0D0
               A4(I) = B2(I) / J  + C1(I) - Y2(M) + D1(I) / M
               A5(I) = B1(I) + CC + C2(I) * Y1(J) + D2(I) * RR
               SM = SM + I
 10        CONTINUE

           WRITE(6,11) A1
           WRITE(6,11) A2
           WRITE(6,11) A3
           WRITE(6,11) A4
           WRITE(6,11) A5
 11        FORMAT(1H ,2(2(D23.16,2X),4X))
           END
