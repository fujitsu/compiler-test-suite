      PROGRAM MAIN

       REAL*4 RA(10), RB(10,10), RC(10,10,10)
       REAL*8 DA(10), DB(10,10)
       COMPLEX*8 CEB(10,10), CEC(10,10,10)
       COMPLEX*16 CDB(10,10)
       LOGICAL*1 LBB(10,10)
       LOGICAL*4 L4A(10), L4B(10,10)

       DATA RA/10*1./ 
       DATA RB/100*1./ 
       DATA RC/1000*1./ 
       DATA DA/10*1./ 
       DATA DB/100*1./ 
       DATA CEB/100*(1.,1.)/ 
       DATA CEC/1000*(1.,1.)/ 
       DATA CDB/100*(1.,1.)/ 
       DATA L4A/10*.TRUE./ 
       DATA L4B/100*.TRUE./ 
       DATA LBB/100*.TRUE./ 
       INTEGER II5, II4, II3, II2, II1
       REAL RR40, RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, RR31, 
     X   RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, 
     X   RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X   RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       COMPLEX CC5, CC4, CC3, CC2, CC1

       RMX = 0.
       RSUM = 0.
       DO I1=1,7,4
        RR1 = RA(I1)
        RR2 = RA(I1+1)
        RR3 = RA(I1+2)
        RR4 = RA(I1+3)
        DO I2=1,6,5
         RB(I2,I1) = RA(I2) * RR1
         RB(I2+1,I1) = RA(I2+1) * RR1
         RB(I2+2,I1) = RA(I2+2) * RR1
         RB(I2+3,I1) = RA(I2+3) * RR1
         RB(I2+4,I1) = RA(I2+4) * RR1
         RB(I2,I1+1) = RA(I2) * RR2
         RB(I2+1,I1+1) = RA(I2+1) * RR2
         RB(I2+2,I1+1) = RA(I2+2) * RR2
         RB(I2+3,I1+1) = RA(I2+3) * RR2
         RB(I2+4,I1+1) = RA(I2+4) * RR2
         RB(I2,I1+2) = RA(I2) * RR3
         RB(I2+1,I1+2) = RA(I2+1) * RR3
         RB(I2+2,I1+2) = RA(I2+2) * RR3
         RB(I2+3,I1+2) = RA(I2+3) * RR3
         RB(I2+4,I1+2) = RA(I2+4) * RR3
         RB(I2,I1+3) = RA(I2) * RR4
         RB(I2+1,I1+3) = RA(I2+1) * RR4
         RB(I2+2,I1+3) = RA(I2+2) * RR4
         RB(I2+3,I1+3) = RA(I2+3) * RR4
         RB(I2+4,I1+3) = RA(I2+4) * RR4
        END DO
       END DO
       DO I1=9,10,1
        RR5 = RA(I1)
        DO I2=1,6,5
         RB(I2,I1) = RA(I2) * RR5
         RB(I2+1,I1) = RA(I2+1) * RR5
         RB(I2+2,I1) = RA(I2+2) * RR5
         RB(I2+3,I1) = RA(I2+3) * RR5
         RB(I2+4,I1) = RA(I2+4) * RR5
        END DO
       END DO
       DO I1=1,10
        DO I2=1,10
         IF (RB(I2,I1) .GT. RMX) THEN
          RMX = RB(I2,I1)
          J2 = I2
          J1 = I1
         END IF
        END DO
       END DO
C$OMP PARALLEL SHARED (DB,RB) PRIVATE (RR14,RR15,I1,I3,I2)
C$OMP DO 
       DO I1=1,10
        DO I3=1,13
         DO I2=1,7,4
          DB(I2,I1) = RB(I2,I1) * 2. + I3
          DB(I2+1,I1) = RB(I2+1,I1) * 2. + I3
          DB(I2+2,I1) = RB(I2+2,I1) * 2. + I3
          DB(I2+3,I1) = RB(I2+3,I1) * 2. + I3
         END DO
         RR15 = RB(9,I1) * 2.
         RR14 = RB(10,I1) * 2.
         DB(9,I1) = RR15 + I3
         DB(10,I1) = RR14 + I3
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=1,7,4
        RR6 = RA(I2)
        RR7 = RA(I2+1)
        RR8 = RA(I2+2)
        RR9 = RA(I2+3)
        DO I1=1,6,5
         CEB(I1,I2) = CMPLX (RA(I1), RR6)
         CEB(I1+1,I2) = CMPLX (RA(I1+1), RR6)
         CEB(I1+2,I2) = CMPLX (RA(I1+2), RR6)
         CEB(I1+3,I2) = CMPLX (RA(I1+3), RR6)
         CEB(I1+4,I2) = CMPLX (RA(I1+4), RR6)
         CEB(I1,I2+1) = CMPLX (RA(I1), RR7)
         CEB(I1+1,I2+1) = CMPLX (RA(I1+1), RR7)
         CEB(I1+2,I2+1) = CMPLX (RA(I1+2), RR7)
         CEB(I1+3,I2+1) = CMPLX (RA(I1+3), RR7)
         CEB(I1+4,I2+1) = CMPLX (RA(I1+4), RR7)
         CEB(I1,I2+2) = CMPLX (RA(I1), RR8)
         CEB(I1+1,I2+2) = CMPLX (RA(I1+1), RR8)
         CEB(I1+2,I2+2) = CMPLX (RA(I1+2), RR8)
         CEB(I1+3,I2+2) = CMPLX (RA(I1+3), RR8)
         CEB(I1+4,I2+2) = CMPLX (RA(I1+4), RR8)
         CEB(I1,I2+3) = CMPLX (RA(I1), RR9)
         CEB(I1+1,I2+3) = CMPLX (RA(I1+1), RR9)
         CEB(I1+2,I2+3) = CMPLX (RA(I1+2), RR9)
         CEB(I1+3,I2+3) = CMPLX (RA(I1+3), RR9)
         CEB(I1+4,I2+3) = CMPLX (RA(I1+4), RR9)
        END DO
       END DO
       DO I2=9,10,1
        RR10 = RA(I2)
        DO I1=1,6,5
         CEB(I1,I2) = CMPLX (RA(I1), RR10)
         CEB(I1+1,I2) = CMPLX (RA(I1+1), RR10)
         CEB(I1+2,I2) = CMPLX (RA(I1+2), RR10)
         CEB(I1+3,I2) = CMPLX (RA(I1+3), RR10)
         CEB(I1+4,I2) = CMPLX (RA(I1+4), RR10)
        END DO
       END DO
       DO I2=1,8,3
        DO I1=1,10
         IF (ABS (CEB(I1,I2)) .GT. 2.) THEN
          CEB(I1,I2) = (0., 0.)
          CDB(I1,I2) = CEB(I1-1,I2-1)
         ELSE
          CDB(I1,I2) = 0.
         END IF
         IF (ABS (CEB(I1,I2+1)) .GT. 2.) THEN
          CEB(I1,I2+1) = (0., 0.)
          CDB(I1,I2+1) = CEB(I1-1,I2)
         ELSE
          CDB(I1,I2+1) = 0.
         END IF
         IF (ABS (CEB(I1,I2+2)) .GT. 2.) THEN
          CEB(I1,I2+2) = (0., 0.)
          CDB(I1,I2+2) = CEB(I1-1,I2+1)
         ELSE
          CDB(I1,I2+2) = 0.
         END IF
        END DO
       END DO
       DO I1=1,10
        IF (ABS (CEB(I1,10)) .GT. 2.) THEN
         CEB(I1,10) = (0., 0.)
         CDB(I1,10) = CEB(I1-1,9)
        ELSE
         CDB(I1,10) = 0.
        END IF
       END DO
       WRITE (6, *) 'RB=', RB, 'DB=', DB, 'CEB=', CEB, 'CDB=', CDB
       WRITE (6, *) 'RMX=', RMX, 'J2=', J2, 'J1=', J1

       DO I2=1,7,4
        DO I1=1,6,5
         RR16 = RC(I1,I2,I2) + RB(I1,I2)
         RR17 = RC(I1+1,I2,I2) + RB(I1+1,I2)
         RR18 = RC(I1+2,I2,I2) + RB(I1+2,I2)
         RR19 = RC(I1+3,I2,I2) + RB(I1+3,I2)
         RR20 = RC(I1+4,I2,I2) + RB(I1+4,I2)
         RR21 = RC(I1,I2+1,I2+1) + RB(I1,I2+1)
         RR22 = RC(I1+1,I2+1,I2+1) + RB(I1+1,I2+1)
         RR23 = RC(I1+2,I2+1,I2+1) + RB(I1+2,I2+1)
         RR24 = RC(I1+3,I2+1,I2+1) + RB(I1+3,I2+1)
         RR25 = RC(I1+4,I2+1,I2+1) + RB(I1+4,I2+1)
         RR26 = RC(I1,I2+2,I2+2) + RB(I1,I2+2)
         RR27 = RC(I1+1,I2+2,I2+2) + RB(I1+1,I2+2)
         RR28 = RC(I1+2,I2+2,I2+2) + RB(I1+2,I2+2)
         RR29 = RC(I1+3,I2+2,I2+2) + RB(I1+3,I2+2)
         RR30 = RC(I1+4,I2+2,I2+2) + RB(I1+4,I2+2)
         RR31 = RC(I1,I2+3,I2+3) + RB(I1,I2+3)
         RR32 = RC(I1+1,I2+3,I2+3) + RB(I1+1,I2+3)
         RR33 = RC(I1+2,I2+3,I2+3) + RB(I1+2,I2+3)
         RR34 = RC(I1+3,I2+3,I2+3) + RB(I1+3,I2+3)
         RR35 = RC(I1+4,I2+3,I2+3) + RB(I1+4,I2+3)
         RC(I1+4,I2+3,I2+3) = RR35
         RC(I1+3,I2+3,I2+3) = RR34
         RC(I1+2,I2+3,I2+3) = RR33
         RC(I1+1,I2+3,I2+3) = RR32
         RC(I1,I2+3,I2+3) = RR31
         RC(I1+4,I2+2,I2+2) = RR30
         RC(I1+3,I2+2,I2+2) = RR29
         RC(I1+2,I2+2,I2+2) = RR28
         RC(I1+1,I2+2,I2+2) = RR27
         RC(I1,I2+2,I2+2) = RR26
         RC(I1+4,I2+1,I2+1) = RR25
         RC(I1+3,I2+1,I2+1) = RR24
         RC(I1+2,I2+1,I2+1) = RR23
         RC(I1+1,I2+1,I2+1) = RR22
         RC(I1,I2+1,I2+1) = RR21
         RC(I1+4,I2,I2) = RR20
         RC(I1+3,I2,I2) = RR19
         RC(I1+2,I2,I2) = RR18
         RC(I1+1,I2,I2) = RR17
         RC(I1,I2,I2) = RR16
        END DO
       END DO
       DO I2=9,10,1
        DO I1=1,6,5
         RR36 = RC(I1,I2,I2) + RB(I1,I2)
         RR37 = RC(I1+1,I2,I2) + RB(I1+1,I2)
         RR38 = RC(I1+2,I2,I2) + RB(I1+2,I2)
         RR39 = RC(I1+3,I2,I2) + RB(I1+3,I2)
         RR40 = RC(I1+4,I2,I2) + RB(I1+4,I2)
         RC(I1+4,I2,I2) = RR40
         RC(I1+3,I2,I2) = RR39
         RC(I1+2,I2,I2) = RR38
         RC(I1+1,I2,I2) = RR37
         RC(I1,I2,I2) = RR36
        END DO
       END DO
       DO I2=1,10
        DO I1=1,10
         RSUM = RSUM - 10 + RB(I1,I2) + I2 + I1 * 10
         RB(I1,I2) = 0.
         IF (RC(I1,I2,I2) .EQ. 1.) THEN
          L4B(I1,I2) = .FALSE.
          L4B(I1,I2) = .TRUE.
         END IF
         LBB(I1,I2) = L4B(I1,I2) .NEQV. LBB(I1,I2)
        END DO
       END DO
       DO I1=1,10
        IF (I1 .EQ. 5) THEN
         L4A(I1) = L4B(I1,I1) .NEQV. LBB(I1,I1)
        END IF
       END DO
       DO I1=1,6,5
        RA(I1) = RB(I1,I1)
        RA(I1+1) = RB(I1+1,I1+1)
        RA(I1+2) = RB(I1+2,I1+2)
        RA(I1+3) = RB(I1+3,I1+3)
        RA(I1+4) = RB(I1+4,I1+4)
       END DO
       WRITE (6, *) 'RB=', RB, 'RSUM=', RSUM, 'RA=', RA
       WRITE (6, *) 'L4B=', L4B, 'LBB=', LBB, 'RC=', RC, 'L4A=', L4A

       DO I1=1,10
        IF (I1 .LT. 11 .OR. I1 .GT. 0) THEN
         RA(I1) = I1 + 100
         DA(I1) = RA(I1) * 1.5
        END IF
        IF (I1 .GT. 0) THEN
         RR11 = RA(I1)
         II5 = I1 / 4
         II4 = II5 * 4 + 1
         DO I2=1,I1-3,4
          CEB(I2,I1) = CMPLX (RR11, RA(I2))
          CEB(I2+1,I1) = CMPLX (RR11, RA(I2+1))
          CEB(I2+2,I1) = CMPLX (RR11, RA(I2+2))
          CEB(I2+3,I1) = CMPLX (RR11, RA(I2+3))
         END DO
         DO I2=II4,I1,1
          CEB(I2,I1) = CMPLX (RR11, RA(I2))
         END DO
        END IF
       END DO

C$OMP PARALLEL SHARED (RA,CEB,CEC,RC) PRIVATE (CC1,CC2,CC3,CC4,RR12,II1,
C$OMP& CC5,RR13,II2,II3,I1,I2,I3)
C$OMP DO 
       DO I1=1,10
        II1 = I1 / 4
        IF (II1 .GT. 0) THEN
         RR12 = RA(I1)
         DO I2=1,I1-3,4
          CC1 = RR12 * CEB(I2,I1)
          CC2 = RR12 * CEB(I2+1,I1)
          CC3 = RR12 * CEB(I2+2,I1)
          CC4 = RR12 * CEB(I2+3,I1)
          DO I3=1,6,5
           CEC(I3,I2,I1) = RC(I3,I2,I1) + CC1
           CEC(I3+1,I2,I1) = RC(I3+1,I2,I1) + CC1
           CEC(I3+2,I2,I1) = RC(I3+2,I2,I1) + CC1
           CEC(I3+3,I2,I1) = RC(I3+3,I2,I1) + CC1
           CEC(I3+4,I2,I1) = RC(I3+4,I2,I1) + CC1
           CEC(I3,I2+1,I1) = RC(I3,I2+1,I1) + CC2
           CEC(I3+1,I2+1,I1) = RC(I3+1,I2+1,I1) + CC2
           CEC(I3+2,I2+1,I1) = RC(I3+2,I2+1,I1) + CC2
           CEC(I3+3,I2+1,I1) = RC(I3+3,I2+1,I1) + CC2
           CEC(I3+4,I2+1,I1) = RC(I3+4,I2+1,I1) + CC2
           CEC(I3,I2+2,I1) = RC(I3,I2+2,I1) + CC3
           CEC(I3+1,I2+2,I1) = RC(I3+1,I2+2,I1) + CC3
           CEC(I3+2,I2+2,I1) = RC(I3+2,I2+2,I1) + CC3
           CEC(I3+3,I2+2,I1) = RC(I3+3,I2+2,I1) + CC3
           CEC(I3+4,I2+2,I1) = RC(I3+4,I2+2,I1) + CC3
           CEC(I3,I2+3,I1) = RC(I3,I2+3,I1) + CC4
           CEC(I3+1,I2+3,I1) = RC(I3+1,I2+3,I1) + CC4
           CEC(I3+2,I2+3,I1) = RC(I3+2,I2+3,I1) + CC4
           CEC(I3+3,I2+3,I1) = RC(I3+3,I2+3,I1) + CC4
           CEC(I3+4,I2+3,I1) = RC(I3+4,I2+3,I1) + CC4
          END DO
         END DO
        END IF
        I2 = II1 * 4 + 1
        II2 = I2
        II3 = I1 - II2 + 1
        IF (II3 .GT. 0) THEN
         RR13 = RA(I1)
         DO I2=II2,I1,1
          CC5 = RR13 * CEB(I2,I1)
          DO I3=1,6,5
           CEC(I3,I2,I1) = RC(I3,I2,I1) + CC5
           CEC(I3+1,I2,I1) = RC(I3+1,I2,I1) + CC5
           CEC(I3+2,I2,I1) = RC(I3+2,I2,I1) + CC5
           CEC(I3+3,I2,I1) = RC(I3+3,I2,I1) + CC5
           CEC(I3+4,I2,I1) = RC(I3+4,I2,I1) + CC5
          END DO
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) 'RA=', RA, 'DA=', DA, 'CEB=', CEB, 'CEC=', CEC
       STOP 
      END
