      PROGRAM MAIN

       LOGICAL*4 LV11(10), LV12(10)
       DATA LV12/5*.TRUE.,5*.FALSE./ 
       INTEGER*4 IV11(10)
       DATA IV11/1,2,3,4,5,6,7,8,9,10/ 
       COMPLEX*16 CDV11(10)
       DATA CDV11/5*(1.,0.),5*(0.5,0.5)/ 

       INTEGER*4 IS22, IS21, IV21(10), IV22(10)
       DATA IV22/10*3/ 
       DATA IV21/3,5*-1,2*0,3,2/ 

       LOGICAL*4 LS31, LS32
       DATA LS32/.FALSE./ 
       REAL*4 RV31(10), RV32(10)
       DATA RV32/10*1.0/ 
       DATA RV31/3*4.0,5*-1.,2*5./ 
       REAL*8 DV31(10)
       DOUBLEPRECISION DS31
       REAL RS31, RS32, RS11
       INTEGER IS23
       PARAMETER (DS31 = 4D0, RS31 = 10., RS32 = 3., IS23 = 4, RS11 = 0.
     X   )
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 4D0)
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD66, DD65, DD64, DD63, DD62, DD61, DD60, DD59, 
     X   DD58, DD57, DD56, DD55, DD54, DD53, DD52, DD51, DD50, DD49, 
     X   DD48, DD47, DD46, DD45, DD44, DD43, DD42, DD41, DD40, DD39, 
     X   DD38, DD37, DD36, DD35, DD34, DD33, DD32, DD31, DD30, DD29, 
     X   DD28, DD27
       DOUBLE PRECISION DD26, DD25, DD24, DD23, DD22, DD21, DD20, DD19, 
     X   DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8
     X   , DD7, DD6, DD5, DD4, DD3, DD2
       IS22 = -10
       DATA DV31/2*8.,8*4./ 

       CS11 = 1.
       DO I=1,6,5
        CS11 = I + CS11
        LV11(I) = I .LT. 3 .OR. 7 .LT. I
        IV11(1) = IV11(1) + IV11(I) + I
        LV12(I) = LV11(I) .NEQV. LV12(I)
        CDV11(I) = -CDV11(I)
        CS11 = 1 + I + CS11
        LV11(I+1) = I .LT. 2 .OR. 6 .LT. I
        IV11(1) = IV11(1) + IV11(I+1) + I + 1
        LV12(I+1) = LV11(I+1) .NEQV. LV12(I+1)
        CDV11(I+1) = -CDV11(I+1)
        CS11 = 2 + I + CS11
        LV11(I+2) = I .LT. 1 .OR. 5 .LT. I
        IV11(1) = IV11(1) + IV11(I+2) + I + 2
        LV12(I+2) = LV11(I+2) .NEQV. LV12(I+2)
        CDV11(I+2) = -CDV11(I+2)
        CS11 = 3 + I + CS11
        LV11(I+3) = I .LT. 0 .OR. 4 .LT. I
        IV11(1) = IV11(1) + IV11(I+3) + I + 3
        LV12(I+3) = LV11(I+3) .NEQV. LV12(I+3)
        CDV11(I+3) = -CDV11(I+3)
        CS11 = 4 + I + CS11
        LV11(I+4) = I .LT. -1 .OR. 3 .LT. I
        IV11(1) = IV11(1) + IV11(I+4) + I + 4
        LV12(I+4) = LV11(I+4) .NEQV. LV12(I+4)
        CDV11(I+4) = -CDV11(I+4)
       END DO

       WRITE (6, *) 56.
       WRITE (6, *) LV11
       WRITE (6, *) LV12
       WRITE (6, *) IV11
       WRITE (6, *) CDV11

       DO I=1,10
        IF (IS22 .LE. IV21(I)) THEN
         IS22 = IV21(I)
        END IF
       END DO

       DO I=1,6,5

        IF (IV21(I)) 25, 26, 27
   25   IV22(I) = IV22(I) + 4
        GO TO 28

   26   IV22(I) = 4 - IV22(I)
        GO TO 28
   27   IV22(I) = IV22(I) * 4

   28   IF (IV21(I+1)) 1, 2, 3
    1   IV22(I+1) = IV22(I+1) + 4
        GO TO 4

    2   IV22(I+1) = 4 - IV22(I+1)
        GO TO 4
    3   IV22(I+1) = IV22(I+1) * 4

    4   IF (IV21(I+2)) 5, 6, 7
    5   IV22(I+2) = IV22(I+2) + 4
        GO TO 8

    6   IV22(I+2) = 4 - IV22(I+2)
        GO TO 8
    7   IV22(I+2) = IV22(I+2) * 4

    8   IF (IV21(I+3)) 9, 10, 12
    9   IV22(I+3) = IV22(I+3) + 4
        GO TO 13

   10   IV22(I+3) = 4 - IV22(I+3)
        GO TO 13
   12   IV22(I+3) = IV22(I+3) * 4

   13   IF (IV21(I+4)) 14, 15, 16
   14   IV22(I+4) = IV22(I+4) + 4
        GO TO 17

   15   IV22(I+4) = 4 - IV22(I+4)
        GO TO 17
   16   IV22(I+4) = IV22(I+4) * 4
   17   CONTINUE
       END DO

       WRITE (6, *) IS22, IV21
       WRITE (6, *) IV22

       DO I=1,6,5
        DD14 = REAL (RV31(I), KIND = 8)
        DD15 = REAL (RV31(I+1), KIND = 8)
        DD16 = REAL (RV31(I+2), KIND = 8)
        DD17 = REAL (RV31(I+3), KIND = 8)
        DD7 = REAL (RV31(I+4), KIND = 8)
        DD18 = REAL (RV31(I), KIND = 8)
        DD19 = REAL (RV31(I+1), KIND = 8)
        DD20 = REAL (RV31(I+2), KIND = 8)
        DD21 = REAL (RV31(I+3), KIND = 8)
        DD8 = REAL (RV31(I+4), KIND = 8)
        DD22 = DD14 * DD18
        DD23 = DD15 * DD19
        DD24 = DD16 * DD20
        DD25 = DD17 * DD21
        DD6 = DD7 * DD8
        DD26 = DD22 * RV32(I)
        DD27 = DD23 * RV32(I+1)
        DD28 = DD24 * RV32(I+2)
        DD29 = DD25 * RV32(I+3)
        DD5 = DD6 * RV32(I+4)
        DD30 = DD26 / DV31(I)
        DD31 = DD27 / DV31(I+1)
        DD32 = DD28 / DV31(I+2)
        DD33 = DD29 / DV31(I+3)
        DD4 = DD5 / DV31(I+4)
        DD34 = RV31(I) + DD30
        DD35 = RV31(I+1) + DD31
        DD36 = RV31(I+2) + DD32
        DD37 = RV31(I+3) + DD33
        DD3 = RV31(I+4) + DD4
        RR2 = REAL (DV31(I))
        RR3 = REAL (DV31(I+1))
        RR4 = REAL (DV31(I+2))
        RR5 = REAL (DV31(I+3))
        RR1 = REAL (DV31(I+4))
        DD38 = REAL (RR2, KIND = 8)
        DD39 = REAL (RR3, KIND = 8)
        DD40 = REAL (RR4, KIND = 8)
        DD41 = REAL (RR5, KIND = 8)
        DD10 = REAL (RR1, KIND = 8)
        DD42 = DD38 * (-10D0)
        DD43 = DD39 * (-10D0)
        DD44 = DD40 * (-10D0)
        DD45 = DD41 * (-10D0)
        DD9 = DD10 * (-10D0)
        DD46 = DD34 + DD42
        DD47 = DD35 + DD43
        DD48 = DD36 + DD44
        DD49 = DD37 + DD45
        DD2 = DD3 + DD9
        DD50 = REAL (RV31(I), KIND = 8)
        DD51 = REAL (RV31(I+1), KIND = 8)
        DD52 = REAL (RV31(I+2), KIND = 8)
        DD53 = REAL (RV31(I+3), KIND = 8)
        DD13 = REAL (RV31(I+4), KIND = 8)
        DD54 = DD50 * 3D0
        DD55 = DD51 * 3D0
        DD56 = DD52 * 3D0
        DD57 = DD53 * 3D0
        DD12 = DD13 * 3D0
        DD58 = DD54 * DD1
        DD59 = DD55 * DD1
        DD60 = DD56 * DD1
        DD61 = DD57 * DD1
        DD11 = DD12 * DD1
        DD62 = DD46 + DD58
        DD63 = DD47 + DD59
        DD64 = DD48 + DD60
        DD65 = DD49 + DD61
        DD66 = DD2 + DD11
        DV31(I+4) = DD66
        DV31(I+3) = DD65
        DV31(I+2) = DD64
        DV31(I+1) = DD63
        DV31(I) = DD62
       END DO

       DO I=1,10
        IF (DV31(I) .GT. 3D0 .EQV. .FALSE.) THEN
         RV31(I) = 3.
        END IF

        RV32(I) = DV31(I) - RV31(I)
       END DO

       WRITE (6, *) DV31
       WRITE (6, *) RV31
       WRITE (6, *) RV32

       STOP 
      END
