      PROGRAM MAIN

       INTEGER*4 IV11(10), IV12(10), IS11, IS12
       DATA IV12/1,9,8,7,6,5,4,3,2,1/ 
       DATA IV11/1,2,3,4,5,6,7,8,9,10/ 
       REAL*4 RS11, RS13, RS14
       REAL*8 DV11(10)
       DATA DV11/5*3.,5*2.5/ 

       REAL*8 DS20, DS22, DS23, DS24
       REAL*4 RV21(10)
       DATA RV21/-1,0,1,2,3,4,5,6,7,8/ 
       COMPLEX*16 CV21(2)
       DATA CV21/2*0/ 

       LOGICAL*4 LS31, LS32
       DATA LS32/.FALSE./ 
       REAL*4 RV31(10), RV32(10), RS33, RS34, RS36
       DATA RV32/10*2./ 
       DATA RV31/3*4.0,5*-1.,2*5./ 
       REAL*8 DV31(10)
       DATA DV31/1.,8.,8*4./ 
       COMPLEX CS31
       DOUBLEPRECISION DS31, DS21
       REAL RS31, RS32, RS35, RS12
       DOUBLE COMPLEX CS21
       PARAMETER (CS31 = (1.,1.), DS31 = 4D0, RS31 = 10., RS32 = 3., 
     X   RS35 = 1.)
       PARAMETER (CS21 = (0.,2.), DS21 = 1D0, RS12 = 2.)
       DOUBLEPRECISION DD1, DD2
       PARAMETER (DD1 = 1D0 / 2., DD2 = 1D0 / 4D0)
       INTEGER II4, II3, II2, II1
       COMPLEX*16 DC2, DC1
       IS12 = 10
       IS11 = 2
       RS14 = 0.
       RS13 = 3.
       RS11 = 0.
       DS24 = 0D0
       DS23 = 0D0
       DS22 = 0D0
       RS36 = 0.
       RS34 = 0.
       II2 = IV11(3)
       II3 = IV11(2)
       II4 = IV11(1)

       DO I=1,6,5
        RS11 = MAX (RS11, 2.)
        IS11 = MIN (IS11, II2)
        RS13 = MIN (RS13, SNGL (DV11(I)), 2.)
        IS12 = MAX (IS12, II3, II4 + IV12(I))
        IS13 = -3 + DV11(I) * DD1
        RS14 = MAX (RS14, FLOAT (IS13))
        RS11 = MAX (RS11, 2.)
        IS11 = MIN (IS11, II2)
        RS13 = MIN (RS13, SNGL (DV11(I+1)), 2.)
        IS12 = MAX (IS12, II3, II4 + IV12(I+1))
        IS13 = -3 + DV11(I+1) * DD1
        RS14 = MAX (RS14, FLOAT (IS13))
        RS11 = MAX (RS11, 2.)
        IS11 = MIN (IS11, II2)
        RS13 = MIN (RS13, SNGL (DV11(I+2)), 2.)
        IS12 = MAX (IS12, II3, II4 + IV12(I+2))
        IS13 = -3 + DV11(I+2) * DD1
        RS14 = MAX (RS14, FLOAT (IS13))
        RS11 = MAX (RS11, 2.)
        IS11 = MIN (IS11, II2)
        RS13 = MIN (RS13, SNGL (DV11(I+3)), 2.)
        IS12 = MAX (IS12, II3, II4 + IV12(I+3))
        IS13 = -3 + DV11(I+3) * DD1
        RS14 = MAX (RS14, FLOAT (IS13))
        RS11 = MAX (RS11, 2.)
        IS11 = MIN (IS11, II2)
        RS13 = MIN (RS13, SNGL (DV11(I+4)), 2.)
        IS12 = MAX (IS12, II3, II4 + IV12(I+4))
        IS13 = -3 + DV11(I+4) * DD1
        RS14 = MAX (RS14, FLOAT (IS13))
       END DO

       WRITE (6, 91) RS11
       WRITE (6, 91) RS13
       WRITE (6, 91) RS14
       WRITE (6, *) IS11
       WRITE (6, *) IS12
   91  FORMAT(F14.7)

       DC1 = CV21(1)
       DC2 = CV21(2)
       DO I=1,6,5

        DC1 = DC1 - (1D0, 0D0) + CS21 * RV21(11-I)

        DC2 = DC2 + CS21

        DC1 = DC1 - (1D0, 0D0) + CS21 * RV21(10-I)

        DC2 = DC2 + CS21

        DC1 = DC1 - (1D0, 0D0) + CS21 * RV21(9-I)

        DC2 = DC2 + CS21

        DC1 = DC1 - (1D0, 0D0) + CS21 * RV21(8-I)

        DC2 = DC2 + CS21

        DC1 = DC1 - (1D0, 0D0) + CS21 * RV21(7-I)

        DC2 = DC2 + CS21
       END DO
       CV21(1) = DC1
       CV21(2) = DC2

C$OMP PARALLEL SHARED (DS22,RV21,DS23,DS24) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,2
        GO TO (9, 10), II1
        DO I=1,10

         IF (DS22 .LE. REAL (RV21(I), KIND = 8)) THEN
          DS22 = RV21(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 11

    9   DO I=1,10
         IF (REAL (RV21(I), KIND = 8) .GE. DS23) THEN
          DS23 = RV21(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 11

   10   DO I=1,10
         IF (DS24 .LE. REAL (RV21(I), KIND = 8)) THEN
          DS24 = RV21(I)
         END IF
        END DO
C$OMP FLUSH
   11   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 92) CV21
       WRITE (6, 91) DS22, DS23, DS24
   92  FORMAT(5(1X,F14.7))

       DO I=1,6,5
        DV31(10) = DV31(10) + REAL (REAL (DV31(11-I)), KIND = 8) * (
     X    -10D0) + REAL (RV31(I), KIND = 8) * REAL (RV31(I), KIND = 8) *
     X     RV32(I) / DV31(11-I) + RV31(I) + REAL (RV31(I), KIND = 8) * 
     X    3D0 * DD2
        DV31(10) = DV31(10) + REAL (REAL (DV31(10-I)), KIND = 8) * (
     X    -10D0) + REAL (RV31(I+1), KIND = 8) * REAL (RV31(I+1), KIND = 
     X    8) * RV32(I+1) / DV31(10-I) + RV31(I+1) + REAL (RV31(I+1), 
     X    KIND = 8) * 3D0 * DD2
        DV31(10) = DV31(10) + REAL (REAL (DV31(9-I)), KIND = 8) * (-10D0
     X    ) + REAL (RV31(I+2), KIND = 8) * REAL (RV31(I+2), KIND = 8) * 
     X    RV32(I+2) / DV31(9-I) + RV31(I+2) + REAL (RV31(I+2), KIND = 8)
     X     * 3D0 * DD2
        DV31(10) = DV31(10) + REAL (REAL (DV31(8-I)), KIND = 8) * (-10D0
     X    ) + REAL (RV31(I+3), KIND = 8) * REAL (RV31(I+3), KIND = 8) * 
     X    RV32(I+3) / DV31(8-I) + RV31(I+3) + REAL (RV31(I+3), KIND = 8)
     X     * 3D0 * DD2
        DV31(10) = DV31(10) + REAL (REAL (DV31(7-I)), KIND = 8) * (-10D0
     X    ) + REAL (RV31(I+4), KIND = 8) * REAL (RV31(I+4), KIND = 8) * 
     X    RV32(I+4) / DV31(7-I) + RV31(I+4) + REAL (RV31(I+4), KIND = 8)
     X     * 3D0 * DD2
       END DO

       DO I=1,6,5

        RS33 = ABS (CS31 * DV31(I))
        RS34 = MAX (RS34, RS33)
        RS36 = MAX (RS36, 1.)

        RS33 = ABS (CS31 * DV31(I+1))
        RS34 = MAX (RS34, RS33)

        RS36 = MAX (RS36, 1.)

        RS33 = ABS (CS31 * DV31(I+2))
        RS34 = MAX (RS34, RS33)

        RS36 = MAX (RS36, 1.)

        RS33 = ABS (CS31 * DV31(I+3))
        RS34 = MAX (RS34, RS33)

        RS36 = MAX (RS36, 1.)

        RS33 = ABS (CS31 * DV31(I+4))
        RS34 = MAX (RS34, RS33)

        RS36 = MAX (RS36, 1.)
       END DO

       WRITE (6, 92) DV31
       WRITE (6, 91) RS34
       WRITE (6, 91) RS36

       STOP 
      END
