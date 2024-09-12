      PROGRAM MAIN

       REAL*4 RS11
       REAL*8 DV11(10)
       DATA DV11/3*1.0,7*2.0/ 
       COMPLEX*8 CV11(10)
       DATA CV11/9*(1.0,1.0),(-1.,2.)/ 
       LOGICAL*4 LV11(10)
       DATA LV11/8*.TRUE.,2*.FALSE./ 


       LOGICAL*4 LS21
       DATA LS21/.TRUE./ 
       INTEGER*4 IV21(10), IV22(10)
       DATA IV21/10*0/ 
       REAL*4 RV21(10)
       DATA RV21/3*Z'40100000',3*Z'C1100000',3*Z'3F100000',0/ 
       REAL*4 RV22(10), RV23(10)
       DATA RV22/10*0.0/ 


       INTEGER*4 IV31(10)
       COMPLEX*8 CV31(10)
       DATA CV31/3*(1.,2.),3*(2.,1.),4*(2.,2.)/ 
       COMPLEX*8 CV32(30)
       COMPLEX CS31, CS21
       INTEGER IS11
       PARAMETER (CS31 = (10.,10.), CS21 = (2.0,1.0), IS11 = 1)
       DOUBLEPRECISION DD1
       REAL RR1
       COMPLEX CC1, CC2
       PARAMETER (DD1 = 1D0 / 2., RR1 = 1. / 16., CC1 = (1., 0.) / 2., 
     X   CC2 = (1., 0.) / 2)


       DO I=1,10
        IF (I .LE. 5) THEN
         RS11 = DV11(I) * DD1
         CV11(I+5) = CMPLX (RS11, RS11) * 2.
        ELSE

         DV11(I) = CV11(I) - 1

         IF (LV11(I) .OR. DV11(I) .GT. -1) CV11(I) = (0., 0.)
        END IF

       END DO

       WRITE (6, *) 1, DV11, CV11

       DO I=1,6,5
        IV22(I) = RV21(I) * I
        IV22(I+1) = RV21(I+1) * (I + 1)
        IV22(I+2) = RV21(I+2) * (I + 2)
        IV22(I+3) = RV21(I+3) * (I + 3)
        IV22(I+4) = RV21(I+4) * (I + 4)
        RV23(I) = RV21(I) * I
        RV23(I+1) = RV21(I+1) * (I + 1)
        RV23(I+2) = RV21(I+2) * (I + 2)
        RV23(I+3) = RV21(I+3) * (I + 3)
        RV23(I+4) = RV21(I+4) * (I + 4)
       END DO
       DO I=1,7,3
        IV21(I) = IV22(I)
        IV21(I+1) = IV22(I+1)
        IV21(I+2) = IV22(I+2)
       END DO
       DO I=1,7,3
        RV22(I) = RV23(I)
        IF (RV22(I)) 15, 17, 18
   15   IF (IV21(I)) 19, 19, 16
   16   IV21(I) = IV21(I) * CS21
        GO TO 19
   17   IV21(I) = 100
        GO TO 19

   18   IV21(I) = 1 + RV22(I) * 10D0
        RV22(I+1) = RV21(I) * RR1 - CS21
   19   RV22(I+1) = RV23(I+1)
        IF (RV22(I+1)) 1, 3, 4
    1   IF (IV21(I+1)) 5, 5, 2
    2   IV21(I+1) = IV21(I+1) * CS21
        GO TO 5

    3   IV21(I+1) = 100
        GO TO 5

    4   IV21(I+1) = 1 + RV22(I+1) * 10D0
        RV22(I+2) = RV21(I+1) * RR1 - CS21
    5   RV22(I+2) = RV23(I+2)
        IF (RV22(I+2)) 6, 8, 9
    6   IF (IV21(I+2)) 10, 10, 7
    7   IV21(I+2) = IV21(I+2) * CS21
        GO TO 10

    8   IV21(I+2) = 100
        GO TO 10

    9   IV21(I+2) = 1 + RV22(I+2) * 10D0
        RV22(I+3) = RV21(I+2) * RR1 - CS21
   10   CONTINUE
       END DO

       WRITE (6, *) RV21
       WRITE (6, *) RV22, RV23
       WRITE (6, *) IV21, IV22

       DO I=1,10
        CV31(I) = CS31 - CV31(I) * CC1
        IV31(I) = IMAG (CS31 - CV31(I) * CC2)
        CV32(I*3) = (CV31(I) - CMPLX (0, IV31(I))) ** 3
        CV32(I*3-1) = (CV31(I) - CMPLX (0, IV31(I))) ** 4
        CV32(I*3-2) = (CV31(I) - CMPLX (0, IV31(I))) ** 5
       END DO

       WRITE (6, *) CV31
       WRITE (6, *) CV32
       WRITE (6, *) IV31

       STOP 
      END
