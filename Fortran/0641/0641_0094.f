      PROGRAM MAIN

       INTEGER*4 IS11, IS12
       REAL*8 DV11(10), DV12(10)
       DATA DV12/5*3.,5*1./ 
       DATA DV11/16.,9.,8.,7*3./ 
       COMPLEX*8 CV11(10), CV12(10)
       DATA CV11/4*(1.,.5),4*(2.,3.),2*(1.,1.)/ 

       REAL*4 RS21, RS22, RV21(10)
       DATA RV21/-1.,8*0.,1./ 
       REAL*8 DS21, DS22, DV21(10)
       DATA DV21/3.,7*1.,2.,0./ 

       REAL*4 RV32(5), RV31(10)
       DATA RV31/5*1.,5*10./ 
       DATA RV32/5*0./ 
       INTEGER*4 IV31(10)
       DATA IV31/0,1,2,3,4,5,6,7,8,9/ 
       COMPLEX CS31
       DOUBLEPRECISION DS31
       REAL RS11
       INTEGER IS13
       PARAMETER (CS31 = (1.,1.), DS31 = 2D0, RS11 = 16., IS13 = 3)
       COMPLEX CC1
       REAL RR1
       PARAMETER (CC1 = (1., 0.) / 16., RR1 = 1. / 4.)
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1, I1
       DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, 
     X   DD1
       COMPLEX CC11, CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2
       RS22 = 9.
       RS21 = 0.
       DS22 = 9D0
       DS21 = 0D0

       DO I1=1,6,5
        II2 = 16. - DV11(I1)
        II3 = 16. - DV11(I1+1)
        II4 = 16. - DV11(I1+2)
        II5 = 16. - DV11(I1+3)
        IS11 = 16. - DV11(I1+4)
        CC3 = II2 * CV11(I1)
        CC4 = II3 * CV11(I1+1)
        CC5 = II4 * CV11(I1+2)
        CC6 = II5 * CV11(I1+3)
        CC2 = IS11 * CV11(I1+4)
        II6 = I1
        II7 = I1 + 1
        II8 = I1 + 2
        II9 = I1 + 3
        II1 = I1 + 4
        CC7 = CC3 * II6
        CC8 = CC4 * II7
        CC9 = CC5 * II8
        CC10 = CC6 * II9
        CC11 = CC2 * II1
        CV11(I1) = CC7
        CC3 = CC7 * CC1
        CV11(I1+1) = CC8
        CC4 = CC8 * CC1
        CV11(I1+2) = CC9
        CC5 = CC9 * CC1
        CV11(I1+3) = CC10
        CC6 = CC10 * CC1
        CV11(I1+4) = CC11
        CC2 = CC11 * CC1
        CV12(I1) = CC3 - DV12(I1)
        CV12(I1+1) = CC4 - DV12(I1+1)
        CV12(I1+2) = CC5 - DV12(I1+2)
        CV12(I1+3) = CC6 - DV12(I1+3)
        CV12(I1+4) = CC2 - DV12(I1+4)
        II6 = I1 + 1
        II7 = I1 + 2
        II8 = I1 + 3
        II9 = I1 + 4
        II1 = I1 + 5
        DD2 = DV12(I1) * II6
        DD3 = DV12(I1+1) * II7
        DD4 = DV12(I1+2) * II8
        DD5 = DV12(I1+3) * II9
        DD1 = DV12(I1+4) * II1
        DD6 = DD2 * 3
        DD7 = DD3 * 3
        DD8 = DD4 * 3
        DD9 = DD5 * 3
        DD10 = DD1 * 3
        DV12(I1+4) = DD10
        DV12(I1+3) = DD9
        DV12(I1+2) = DD8
        DV12(I1+1) = DD7
        DV12(I1) = DD6
       END DO

       WRITE (6, *) CV11, CV12, DV11, DV12, 11, 11

       RS21 = MAX (RV21(1), RV21(2), RS21)
       RV21(2) = DV21(2) + RR1
       DV21(2) = 6 - MAX (RV21(2), RV21(3))
       RS21 = MAX (RV21(2), RV21(3), RS21)
       RV21(3) = DV21(3) + RR1 * 2
       DV21(3) = 9 - MAX (RV21(3), RV21(4))
       RS21 = MAX (RV21(3), RV21(4), RS21)
       RV21(4) = DV21(4) + RR1 * 3
       DV21(4) = 12 - MAX (RV21(4), RV21(5))
       RS21 = MAX (RV21(4), RV21(5), RS21)
       RV21(5) = DV21(5) + RR1 * 4
       DV21(5) = 15 - MAX (RV21(5), RV21(6))
       RS21 = MAX (RV21(5), RV21(6), RS21)
       RV21(6) = DV21(6) + RR1 * 5
       DV21(6) = 18 - MAX (RV21(6), RV21(7))
       RS21 = MAX (RV21(6), RV21(7), RS21)
       RV21(7) = DV21(7) + RR1 * 6
       DV21(7) = 21 - MAX (RV21(7), RV21(8))
       RS21 = MAX (RV21(7), RV21(8), RS21)
       RV21(8) = DV21(8) + RR1 * 7
       DV21(8) = 24 - MAX (RV21(8), RV21(9))
       RS22 = MIN (RS22, RV21(2))
       DS21 = MAX (DS21, DV21(2))
       DV21(2) = REAL (RV21(2), KIND = 8) * REAL (RV21(2), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(2)))
       RS22 = MIN (RS22, RV21(3))
       DS21 = MAX (DS21, DV21(3))
       DV21(3) = REAL (RV21(3), KIND = 8) * REAL (RV21(3), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(3)))
       RS22 = MIN (RS22, RV21(4))
       DS21 = MAX (DS21, DV21(4))
       DV21(4) = REAL (RV21(4), KIND = 8) * REAL (RV21(4), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(4)))
       RS22 = MIN (RS22, RV21(5))
       DS21 = MAX (DS21, DV21(5))
       DV21(5) = REAL (RV21(5), KIND = 8) * REAL (RV21(5), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(5)))
       RS22 = MIN (RS22, RV21(6))
       DS21 = MAX (DS21, DV21(6))
       DV21(6) = REAL (RV21(6), KIND = 8) * REAL (RV21(6), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(6)))
       RS22 = MIN (RS22, RV21(7))
       DS21 = MAX (DS21, DV21(7))
       DV21(7) = REAL (RV21(7), KIND = 8) * REAL (RV21(7), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(7)))
       RS22 = MIN (RS22, RV21(8))
       DS21 = MAX (DS21, DV21(8))
       DV21(8) = REAL (RV21(8), KIND = 8) * REAL (RV21(8), KIND = 8)
       DS22 = MIN (DS22, ABS (DV21(8)))

       WRITE (6, *) RS21, RS22, DS21, DS22, RV21, DV21

       DO I1=1,10
        IF (I1 .GT. 5) THEN
         RV32(5) = RV32(5) + RV31(I1)
        ELSE
         RV32(1) = RV32(1) + RV31(I1)
         RV32(2) = RV32(2) + RV31(I1+1)
         RV32(3) = RV32(3) + RV31(I1+2)
         RV32(4) = RV32(4) + RV31(I1+3)
        END IF

        IV31(1) = IV31(1) + INT (IV31(I1) * 2D0 - CS31)
       END DO

       WRITE (6, *) IV31, RV31, RV32

       STOP 
      END
