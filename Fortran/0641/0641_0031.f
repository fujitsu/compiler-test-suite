      PROGRAM MAIN
       CALL EQREP6
       CALL EQREP7
       STOP 
      END

      SUBROUTINE EQREP6
 
       REAL*4 RA(10), RB(20), RC(10), RD(20), RE(10), RF(10), RG(10)
       COMPLEX*8 CEA(10)
       INTEGER*4 IA(10), IB(10), IC(20), ID(10), LIST(10)
       LOGICAL*4 LA(10), LL(10), LT

       EQUIVALENCE (RA(1), RB(1)), (RC(1), RD(1)), (RE(1), RD(3)), (IA(1
     X   ), IC(1)), (IB(1), IC(11)), (LA(1), ID(1)), (RF(1), CEA(1))

       DATA RB/20*1.0/ 
       DATA RD/20*1.0/ 
       DATA IC/20*1.0/ 
       DATA LL/10*.TRUE./ 
       DATA ID/10*1/ 
       DATA CEA/10*(1.0,1.0)/ 
       DATA LIST/1,2,3,4,5,6,7,8,9,10/ 
       REAL RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5
     X   , RR4, RR3, RR2, RR1

       DO I=1,6,5
        RR6 = I + I * I
        RR7 = I + (I + 1) * (I + 1) + 1
        RR8 = I + (I + 2) * (I + 2) + 2
        RR9 = I + (I + 3) * (I + 3) + 3
        RR10 = I + (I + 4) * (I + 4) + 4
        RG(I) = RR6 + RB(I+10)
        RG(I+1) = RR7 + RB(I+11)
        RG(I+2) = RR8 + RB(I+12)
        RG(I+3) = RR9 + RB(I+13)
        RG(I+4) = RR10 + RB(I+14)
        RR2 = RE(I) * 2.5
        RR3 = RE(I+1) * 2.5
        RR4 = RE(I+2) * 2.5
        RR5 = RE(I+3) * 2.5
        RR1 = RE(I+4) * 2.5
        RR11 = RE(I) + RR2
        RR12 = RE(I+1) + RR3
        RR13 = RE(I+2) + RR4
        RR14 = RE(I+3) + RR5
        RR15 = RE(I+4) + RR1
        RB(I+14) = RR15
        RB(I+13) = RR14
        RB(I+12) = RR13
        RB(I+11) = RR12
        RB(I+10) = RR11
        RA(I+4) = RR10
        RA(I+3) = RR9
        RA(I+2) = RR8
        RA(I+1) = RR7
        RA(I) = RR6
       END DO

       DO I=1,6,5
        RC(I) = RG(I) + RA(I)
        RC(I+1) = RG(I+1) + RA(I+1)
        RC(I+2) = RG(I+2) + RA(I+2)
        RC(I+3) = RG(I+3) + RA(I+3)
        RC(I+4) = RG(I+4) + RA(I+4)
       END DO

       DO I=1,6,5
        LA(LIST(I)) = RC(I) .GT. RB(I+10)
        LA(LIST(I+1)) = RC(I+1) .GT. RB(I+11)
        LA(LIST(I+2)) = RC(I+2) .GT. RB(I+12)
        LA(LIST(I+3)) = RC(I+3) .GT. RB(I+13)
        LA(LIST(I+4)) = RC(I+4) .GT. RB(I+14)
       END DO
       WRITE (6, *) 'RA=', RA
       WRITE (6, *) 'RG=', RG
       WRITE (6, *) 'RC=', RC
       WRITE (6, *) 'RB=', RB
       WRITE (6, *) 'LA=', LA

       DO I=1,6,5
        CEA(I) = RG(I) + RG(I) * (0.,1.)
        RA(I) = RF(I) + IB(I)
        CEA(I+1) = RG(I+1) + RG(I+1) * (0.,1.)
        RA(I+1) = RF(I+1) + IB(I+1)
        CEA(I+2) = RG(I+2) + RG(I+2) * (0.,1.)
        RA(I+2) = RF(I+2) + IB(I+2)
        CEA(I+3) = RG(I+3) + RG(I+3) * (0.,1.)
        RA(I+3) = RF(I+3) + IB(I+3)
        CEA(I+4) = RG(I+4) + RG(I+4) * (0.,1.)
        RA(I+4) = RF(I+4) + IB(I+4)
       END DO

       DO I=1,6,5
        IA(I) = I + ID(I)
        IA(I+1) = I + ID(I+1) + 1
        IA(I+2) = I + ID(I+2) + 2
        IA(I+3) = I + ID(I+3) + 3
        IA(I+4) = I + ID(I+4) + 4
        RC(I) = RB(I) + RG(I)
        RC(I+1) = RB(I+1) + RG(I+1)
        RC(I+2) = RB(I+2) + RG(I+2)
        RC(I+3) = RB(I+3) + RG(I+3)
        RC(I+4) = RB(I+4) + RG(I+4)
        LA(I) = RG(I) .GE. RA(I)
        LA(I+1) = RG(I+1) .GE. RA(I+1)
        LA(I+2) = RG(I+2) .GE. RA(I+2)
        LA(I+3) = RG(I+3) .GE. RA(I+3)
        LA(I+4) = RG(I+4) .GE. RA(I+4)
       END DO

       WRITE (6, *) 'IA=', IA
       WRITE (6, *) 'CEA=', CEA
       WRITE (6, *) 'RA=', RA
       WRITE (6, *) 'RC=', RC
       WRITE (6, *) 'LA=', LA

       RETURN 
      END

      SUBROUTINE EQREP7

       REAL*4 RA(10), RB(10), RC(10), RD(20), RT, RS, RV, RK, RJ, RP
       REAL*8 DA(10), DB(10), DC(10), DD(20), DT, DS, DV, DK, DJ, DP
       REAL*8 QA(10), QB(10), QC(10), QD(20), QT, QS, QV, QK, QJ, QP
       LOGICAL LA(10), LB(10), LC(10), LD(20), LT, LS, LV, LK, LJ, LP
       INTEGER IA(10), IB(10), IC(10), ID(20), IT, IS, IV, IK, IJ, IP

       EQUIVALENCE (RA(1), RB(1)), (RC(1), RD(1)), (RB(1), RD(10)), (DA(
     X   1), DB(1)), (DC(1), DD(1)), (DB(1), DD(10)), (QA(1), QB(1)), (
     X   QC(1), QD(1)), (QB(1), QD(10)), (LA(1), LB(1)), (LC(1), LD(1)
     X   ), (LB(1), LD(10)), (IA(1), IB(1)), (IC(1), ID(1)), (IB(1), ID(
     X   10)), (RT, RA(1)), (RS, RC(10)), (RV, RD(20)), (DT, DA(1)), (DS
     X   , DC(10)), (DV, DD(20)), (QT, QA(1)), (QS, QC(10)), (QV, QD(20)
     X   ), (LT, LA(1)), (LS, LC(10)), (LV, LD(20)), (IT, IA(1)), (IS, 
     X   IC(10)), (IV, ID(20)), (RK, RA(2)), (RJ, RC(9)), (RP, RD(19)), 
     X   (DK, DA(2)), (DJ, DC(9)), (DP, DD(19)), (QK, QA(2)), (QJ, QC(9)
     X   ), (QP, QD(19)), (LK, LA(2)), (LJ, LC(9)), (LP, LD(19)), (IK, 
     X   IA(2)), (IJ, IC(9)), (IP, ID(19))

       DATA RD/20*1.0/ 
       DATA DD/20*1.0/ 
       DATA QD/20*1.0/ 
       DATA LD/20*.TRUE./ 
       DATA ID/20*1/ 

       DO I=2,9
        RA(I) = RC(I) + RS
        RT = RA(I) + RV + RP
        IF (I .EQ. 5) THEN
         RB(I) = RT + RK + RP
         RA(I) = RB(I) + RC(I)
        END IF
        RK = RA(I) + RB(I+1)
        RP = RA(I-1)
        RJ = RB(I+1)
       END DO

       WRITE (6, *) 'RD=', RD
 
       RETURN 
      END
 
 
