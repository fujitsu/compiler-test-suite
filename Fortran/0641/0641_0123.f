      PROGRAM MAIN

       LOGICAL*1 MASK1(50), LBS1
       DATA MASK1/50*.TRUE./ 
       LOGICAL*4 MASK(50)
       DATA MASK/50*.TRUE./ 
       INTEGER*2 IHA(50), IHB(50), IHC(50), IHS1, IHS2
       INTEGER*4 IA(50), IB(50), IC(50), IS1, IS2
       LOGICAL*4 LA(50), LB(50), LC(50), LS1, LS2
       REAL RA(50), RB(50), RC(50), RS1, RS2
       REAL*8 DA(50), DB(50), DC(50), DS1, DS2
       REAL*8 QA(50), QB(50), QC(50), QS1, QS2
       COMPLEX*8 CA(50), CB(50), CC(50), CS1, CS2
       COMPLEX*16 CDA(50), CDB(50), CDC(50), CDS1, CDS2
       COMPLEX*16 CQA(50), CQB(50), CQC(50), CQS1, CQS2
       INTEGER N3, N2, N1
       PARAMETER (N3 = 10, N2 = 10, N1 = 50)
       I1 = 0
       I2 = 1
       I3 = 1
       I4 = 0
       I5 = 0
       I6 = 0
       I7 = 0
       I8 = 0
       I9 = 0
       I10 = 0
       I11 = 0
       I12 = 0
       I13 = 0
       I14 = 0
       I15 = 0
       I16 = 0
       I17 = 0
       I18 = 0

       DO I=1,50
        IF (MASK1(I)) THEN
         I1 = I1 + 1
         I2 = I2 + 1
         I3 = I3 + 1
         I4 = I4 + 1
         RA(I4) = 0.
         I5 = I5 + 1
         RB(I5) = I
         I6 = I6 + 1
         I7 = I7 + 1
         LA(I7) = .TRUE.
         I8 = I8 + 1
         I9 = I9 + 1
         LC(I9) = 0 .NE. MOD (I, 2)
         I10 = I10 + 1
         DA(I10) = 0D0
         I11 = I11 + 1
         DB(I11) = I
         I12 = I12 + 1
         DC(I12) = -I
         I13 = I13 + 1
         CA(I13) = (0., 0.)
         I14 = I14 + 1
         CB(I14) = I
         I15 = I15 + 1
         CC(I15) = -I
         I16 = I16 + 1
         I17 = I17 + 1
         I18 = I18 + 1
        END IF
       END DO

       RS1 = 0.
       RS2 = 0.
       IS2 = 0
       DS1 = 0D0
       DS2 = 0D0
       J = 0
       K = 1
       L = 1
       DO I=1,10
        IF (LC(I)) THEN
         DS2 = DMAX1 (DS2, ABS (DC(K)))
         CA(I) = CB(K) - CC(K)
         K = K + 2
         IF (LC(I) .OR. RA(I) .GT. RB(I)) THEN
          RS1 = RS1 + RB(I)
          J = J + 1
          DC(I) = 1. + DC(I)
          DA(J) = DB(I) * DC(I)
          DS1 = DS1 + DB(J)
          IF (RS2 .GT. RA(I)) THEN
           RS2 = RA(I)
           IS2 = I
          END IF
          L = L + 1
          LA(I) = DB(L) .NE. DC(I)
         END IF
        END IF
       END DO
       WRITE (6, *) ' DS2 = ', DS2
       WRITE (6, *) ' CA = ', CA
       WRITE (6, *) ' K   = ', K
       WRITE (6, *) ' RS1 = ', RS1
       WRITE (6, *) ' J   = ', J
       WRITE (6, *) ' DA = ', DA
       WRITE (6, *) ' DS1 = ', DS1
       WRITE (6, *) ' RS2 = ', RS2
       WRITE (6, *) ' IS2 = ', IS2
       WRITE (6, *) ' L   = ', L
       WRITE (6, *) ' LA = ', LA

       STOP 
      END
