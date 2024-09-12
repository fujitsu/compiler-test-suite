      PROGRAM MAIN
       DIMENSION DV1(10), DV2(10), DV3(10), EV1(10), EV2(10), EV3(10), 
     X   CV1(10), CV2(10)
       REAL*8 DV1, DV2, DV3
       REAL*4 EV1, EV2, EV3, EMX
       COMPLEX*8 CV1, CV2, CV3
       INTEGER NV1(10), J, K
       DATA NV1/10*2/ 
       DIMENSION CV3(10)
       INTEGER I1
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, 
     X   DD1
       COMPLEX CC5, CC4, CC3, CC2, CC1
       COMPLEX*16 DC5, DC4, DC3, DC2, DC1
       EMX = -99999999.
       J = 1

       DATA DV1/2*10.,8*1.5/ 
       DATA DV2/3*1.5,5*-2.,2*3.75/ 
       DATA DV3/7*3.75,3*0/ 
       DATA EV1/2.,2*3.5,7*6./ 
       DATA EV2/5*6.,5*-6./ 
       DATA EV3/5*1,4*5,2./ 
       DO I1=1,6,5
        DD3 = DV1(I1) * EV2(I1)
        DD4 = DV1(I1+1) * EV2(I1+1)
        DD5 = DV1(I1+2) * EV2(I1+2)
        DD6 = DV1(I1+3) * EV2(I1+3)
        DD1 = DV1(I1+4) * EV2(I1+4)
        DC2 = (0.,-1.) * DV3(I1)
        DC3 = (0.,-1.) * DV3(I1+1)
        DC4 = (0.,-1.) * DV3(I1+2)
        DC5 = (0.,-1.) * DV3(I1+3)
        DC1 = (0.,-1.) * DV3(I1+4)
        CV1(I1) = DD3 + DC2
        CV1(I1+1) = DD4 + DC3
        CV1(I1+2) = DD5 + DC4
        CV1(I1+3) = DD6 + DC5
        CV1(I1+4) = DD1 + DC1
        DD7 = DV3(I1) / EV1(I1)
        DD8 = DV3(I1+1) / EV1(I1+1)
        DD9 = DV3(I1+2) / EV1(I1+2)
        DD10 = DV3(I1+3) / EV1(I1+3)
        DD2 = DV3(I1+4) / EV1(I1+4)
        DD3 = DD7 - EV2(11-I1)
        DD4 = DD8 - EV2(10-I1)
        DD5 = DD9 - EV2(9-I1)
        DD6 = DD10 - EV2(8-I1)
        DD1 = DD2 - EV2(7-I1)
        RR2 = EV2(I1) - EV1(I1)
        RR3 = EV2(I1+1) - EV1(I1+1)
        RR4 = EV2(I1+2) - EV1(I1+2)
        RR5 = EV2(I1+3) - EV1(I1+3)
        RR1 = EV2(I1+4) - EV1(I1+4)
        CC2 = (1.,1.) * RR2
        CC3 = (1.,1.) * RR3
        CC4 = (1.,1.) * RR4
        CC5 = (1.,1.) * RR5
        CC1 = (1.,1.) * RR1
        CV2(I1) = DD3 - CC2
        CV2(I1+1) = DD4 - CC3
        CV2(I1+2) = DD5 - CC4
        CV2(I1+3) = DD6 - CC5
        CV2(I1+4) = DD1 - CC1
       END DO

       DO I1=1,10
        IF (I1 .LE. 9) THEN
         IF (I1 .NE. 1) THEN
          DV1(I1) = DV2(I1-1) / I1
          NV1(I1) = I1 * 2 + 1
          DV2(I1) = EV1(I1) * EV2(I1)
          DV2(9) = DV2(9) + DV2(I1)
          EV1(I1+1) = IMAG (CV1(I1) * CV2(I1))
          J = J - 5
          NV1(I1) = J + NV1(I1)
          CV2(I1+1) = (999.,999.)
         END IF
        END IF
       END DO

       WRITE (6, *) DV1, DV2, EV1, CV2, NV1

       K = 1
       DO I1=1,10
        IF (I1 .LE. 9) THEN
         IF (I1 .EQ. 1) GO TO 210
         DV1(I1) = DV2(I1-1) / I1
         DV2(I1) = EV1(I1) * EV2(I1)
         DV2(1) = DV2(1) + DV2(I1)
         NV1(K) = J + NV1(K+1) * K
         EV1(I1+1) = IMAG (CV1(I1) * CV2(I1))
         IF (EMX .LT. EV3(I1)) THEN
          EMX = EV3(I1)
         END IF
         J = J - 5
         K = K + 1
         CV2(I1+1) = (999.,999.)
        END IF
  210   CONTINUE
       END DO

       WRITE (6, *) DV1, DV2, EV1, CV2, NV1
       STOP 
      END
