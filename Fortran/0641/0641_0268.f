      PROGRAM MAIN

       INTEGER*4 I11(10)
       REAL*4 R11(10)
       REAL*8 RD11(10), RD12(10), RD13(10), RD14(10), RD15(10), RD16(10)
     X   , RD17(10), RD18(10), RD19(10), RD20(10), RD21(10), RD22(10), 
     X   RDV13
       COMPLEX*8 C11(10)
       COMPLEX*16 CD11(10)
       DATA RD14/1,2,3,4,5,6,7,8,9,10/ 
       DATA I11/1,2,1,2,1,2,3,2,1,2/ 
       DATA R11/10,9,8,7,6,5,4,3,2,1/ 
       DATA C11/2*(1,1),3*(2,2),4*(3,3),(2,1)/ 
       DATA CD11/(2,1),4*(3,3),3*(2,2),2*(1,1)/ 

       REAL*8 RD30(10), RD31(10), RD32(10), RD33(10), RD34(10), RD35(10)
     X   , RD36(10), RD37(10), RD38(10), RD39(10), RD40(10), RDV34
       COMPLEX*16 CD30(10)
       DATA RD32/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.5/ 
       DATA RD34/11,-12,13,-14,15,-16,-17,18,-19,20/ 
       DATA RD36/11,-12,13,-14,15,-16,-17,18,-19,20/ 
       DATA CD30/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/ 
       LOGICAL*4 L41(10)
       DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 

       REAL*8 RD41(10), RD42(10), RD43(10), RD44(10), RD45(10), RD46(10)
     X   , RD47(10), RD48(10), RD49(10), RD50(10), RD51(10), RD52(10)
       DATA RD41/10*0./ 
       DATA RD42/10*0./ 
       DATA RD43/10*0./ 
       DATA RD44/10*0./ 
       DATA RD45/10*0./ 
       DATA RD46/10*0./ 
       DATA RD47/10*0./ 
       DATA RD48/10*0./ 
       DATA RD49/10*0./ 
       DATA RD50/10*0./ 
       DATA RD51/10*0./ 
       DATA RD52/10*0./ 

       REAL*8 RD60(10), RD61(10), RD62(10), RD63(10), RD64(10), RD65(10)
     X   , RD66(10), RD67(10), RD68(10), RD69(10), RD70(10), RDV64
       COMPLEX*16 CD60(10)
       DOUBLEPRECISION RDV63, RDV62, RDV61, RDV60, RDV33, RDV32, RDV31, 
     X   RDV30, RDV11
       INTEGER N
       PARAMETER (RDV63 = 23D0, RDV62 = 0.5, RDV61 = -2D0, RDV60 = 4D0, 
     X   RDV33 = 12.5)
       PARAMETER (RDV32 = 0.5, RDV31 = 2.5, RDV30 = 5D0, RDV11 = 1.5, N
     X    = 10)
       DOUBLE PRECISION DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, 
     X   DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3
     X   , DD2, DD1
       RDV34 = 0D0
       DATA RD60/10*0./ 
       DATA RD61/10*0./ 
       DATA RD63/10*0./ 
       DATA RD65/10*0./ 
       DATA RD67/10*0./ 
       DATA RD68/10*0./ 
       DATA RD69/10*0./ 
       DATA RD70/10*0./ 
       DATA RD62/1.1,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.9/ 
       DATA RD64/1.4,2.5,3.6,4.4,5.6,6.5,7.4,8.5,9.4,10.6/ 
       DATA RD66/4.4,8.8,3.6,4.4,5.6,6.5,7.4,8.5,9.4,10.6/ 
       DATA CD60/2*(1,2),3*(3,4),3*(2,2),2*(2,1)/ 

       RDV13 = 0D0
       DO I=1,9,2
        DD1 = 1D0
        DD2 = RDV11
        DD3 = RD14(I)
        DD4 = I
        DD5 = 2. + DD2
        DD6 = 3. + DD3
        DD7 = RD14(I) * DD4
        DD8 = I11(I)
        DD9 = R11(I)
        DD10 = C11(I)
        DD11 = CD11(I)
        RDV13 = RDV13 + DD1 + DD2 - DD3 + RD14(I) - DD4 + DD5 - DD6 + 
     X    DD7 - DD8 + DD9 - DD10 + DD11
        DD12 = 1D0
        DD13 = RDV11
        DD14 = RD14(I+1)
        DD15 = I + 1
        DD16 = 2. + DD13
        DD17 = 3. + DD14
        DD18 = RD14(I+1) * DD15
        DD19 = I11(I+1)
        DD20 = R11(I+1)
        DD21 = C11(I+1)
        DD22 = CD11(I+1)
        RDV13 = RDV13 + DD12 + DD13 - DD14 + RD14(I+1) - DD15 + DD16 - 
     X    DD17 + DD18 - DD19 + DD20 - DD21 + DD22
        RD22(I+1) = DD22
        RD21(I+1) = DD21
        RD20(I+1) = DD20
        RD19(I+1) = DD19
        RD18(I+1) = DD18
        RD17(I+1) = DD17
        RD16(I+1) = DD16
        RD15(I+1) = DD15
        RD13(I+1) = DD14
        RD12(I+1) = DD13
        RD11(I+1) = DD12
        RD22(I) = DD11
        RD21(I) = DD10
        RD20(I) = DD9
        RD19(I) = DD8
        RD18(I) = DD7
        RD17(I) = DD6
        RD16(I) = DD5
        RD15(I) = DD4
        RD13(I) = DD3
        RD12(I) = DD2
        RD11(I) = DD1
       END DO

       WRITE (6, *) RD11
       WRITE (6, *) RD12
       WRITE (6, *) RD13
       WRITE (6, *) RD15
       WRITE (6, *) RD16
       WRITE (6, *) RD17
       WRITE (6, *) RD18
       WRITE (6, *) RD19
       WRITE (6, *) RD20
       WRITE (6, *) RD21
       WRITE (6, *) RD22
       WRITE (6, *) RDV13

       DO I=1,9,2
        RD30(I) = DBLE (I)
        RD31(I) = DINT (RD32(I))
        RD33(I) = RD31(I) + DNINT (RD34(I))
        RD35(I) = DABS (RD33(I)) - DMOD (RD36(I), 5D0)
        RD37(I) = DSIGN (RDV31, RD35(I))
        RD38(I) = DDIM (RD37(I), RDV32)
        RD39(I) = DMAX1 (RD30(I), RD31(I), RD33(I), RDV33)
        RD40(I) = DIMAG (CD30(I))
        RDV34 = RDV34 + RD30(I) + RD31(I) + RD32(I) + RD33(I) + RD35(I) 
     X    + RD37(I) + RD38(I) + RD39(I) + RD40(I)
        RD30(I+1) = DBLE (I + 1)
        RD31(I+1) = DINT (RD32(I+1))
        RD33(I+1) = RD31(I+1) + DNINT (RD34(I+1))
        RD35(I+1) = DABS (RD33(I+1)) - DMOD (RD36(I+1), 5D0)
        RD37(I+1) = DSIGN (RDV31, RD35(I+1))
        RD38(I+1) = DDIM (RD37(I+1), RDV32)
        RD39(I+1) = DMAX1 (RD30(I+1), RD31(I+1), RD33(I+1), RDV33)
        RD40(I+1) = DIMAG (CD30(I+1))
        RDV34 = RDV34 + RD30(I+1) + RD31(I+1) + RD32(I+1) + RD33(I+1) + 
     X    RD35(I+1) + RD37(I+1) + RD38(I+1) + RD39(I+1) + RD40(I+1)
       END DO

       WRITE (6, *) RD30
       WRITE (6, *) RD31
       WRITE (6, *) RD33
       WRITE (6, *) RD35
       WRITE (6, *) RD37
       WRITE (6, *) RD38
       WRITE (6, *) RD39
       WRITE (6, *) RD40
       WRITE (6, *) RDV34


       RDV13 = 0D0
       DO I=1,10
        IF (.NOT.L41(I)) THEN
         RD41(I) = 1D0
         RD42(I) = RDV11
         RD43(I) = RD44(I)
         RD45(I) = I
         RD46(I) = 2. + RD42(I)
         RD47(I) = 3. + RD43(I)
         RD48(I) = RD44(I) * RD45(I)
         RD49(I) = I11(I)
         RD50(I) = R11(I)
         RD51(I) = C11(I)
         RD52(I) = CD11(I)
         RDV13 = RDV13 + RD41(I) + RD42(I) - RD43(I) + RD44(I) - RD45(I)
     X      + RD46(I) - RD47(I) + RD48(I) - RD49(I) + RD50(I) - RD51(I) 
     X     + RD52(I)
        END IF
       END DO


       WRITE (6, *) RD41
       WRITE (6, *) RD42
       WRITE (6, *) RD43
       WRITE (6, *) RD45
       WRITE (6, *) RD46
       WRITE (6, *) RD47
       WRITE (6, *) RD48
       WRITE (6, *) RD49
       WRITE (6, *) RD50
       WRITE (6, *) RD51
       WRITE (6, *) RD52
       WRITE (6, *) RDV13


       RDV64 = 0D0
       DO I=1,10
        IF (L41(I)) THEN
         RD60(I) = DBLE (I)
         RD61(I) = DINT (RD62(I))
         RD63(I) = RD61(I) + DNINT (RD64(I))
         RD65(I) = DABS (RD63(I)) - DMOD (RD66(I), 4D0)
         RD67(I) = DSIGN (-2D0, RD65(I))
         RD68(I) = DDIM (RD67(I), RDV62)
         RD69(I) = DMAX1 (RD60(I), RD61(I), RD63(I), 23D0)
         RD70(I) = DIMAG (CD60(I))
         RDV64 = RDV64 + RD60(I) + RD61(I) + RD62(I) + RD63(I) + RD65(I)
     X      + RD67(I) + RD68(I) + RD69(I) + RD70(I)
        END IF
       END DO

       WRITE (6, *) RD60
       WRITE (6, *) RD61
       WRITE (6, *) RD63
       WRITE (6, *) RD65
       WRITE (6, *) RD67
       WRITE (6, *) RD68
       WRITE (6, *) RD69
       WRITE (6, *) RD70
       WRITE (6, *) INT (RDV64)
       STOP 
      END
