      PROGRAM MAIN

       LOGICAL*4 MASK(50)
       DATA MASK/50*.TRUE./ 
       INTEGER*4 IA1(50), IB1(50), IC1(50), IS1, IS2
       LOGICAL*4 LA1(50), LB1(50), LC1(50), LS1, LS2
       REAL RA1(50), RB1(50), RC1(50), RS1, RS2
       REAL*8 DA1(50), DB1(50), DC1(50), DS1, DS2
       COMPLEX*8 CA1(50), CB1(50), CC1(50), CS1, CS2
       COMPLEX*16 CDA1(50), CDB1(50), CDC1(50), CDS1, CDS2
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
        IF (MASK(I)) THEN
         I1 = I1 + 1
         I2 = I2 + 1
         I3 = I3 + 1
         I4 = I4 + 1
         RA1(I4) = 0.
         I5 = I5 + 1
         RB1(I5) = I
         I6 = I6 + 1
         I7 = I7 + 1
         LA1(I7) = .TRUE.
         I8 = I8 + 1
         I9 = I9 + 1
         LC1(I9) = 0 .NE. MOD (I, 2)
         I10 = I10 + 1
         DA1(I10) = 0D0
         I11 = I11 + 1
         DB1(I11) = I
         I12 = I12 + 1
         DC1(I12) = -I
         I13 = I13 + 1
         CA1(I13) = (0., 0.)
         I14 = I14 + 1
         CB1(I14) = I
         I15 = I15 + 1
         CC1(I15) = -I
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
        IF (LC1(I)) THEN
         DS2 = DMAX1 (DS2, ABS (DC1(K)))
         CA1(I) = CB1(K) - CC1(K)
         K = K + 2
         IF (LC1(I) .OR. RA1(I) .GT. RB1(I)) THEN
          RS1 = RS1 + RB1(I)
          J = J + 1
          DA1(J) = DB1(I) * DC1(I)
          DS1 = DS1 + DB1(J)
          IF (RS2 .GT. RA1(I)) THEN
           RS2 = RA1(I)
           IS2 = I
          END IF
          L = L + 1
          LA1(I) = DB1(L) .NE. DC1(I)
         END IF
        END IF
       END DO
       WRITE (6, *) ' DS2 = ', DS2
       WRITE (6, *) ' CA1 = ', CA1
       WRITE (6, *) ' K   = ', K
       WRITE (6, *) ' RS1 = ', RS1
       WRITE (6, *) ' J   = ', J
       WRITE (6, *) ' DA1 = ', DA1
       WRITE (6, *) ' DS1 = ', DS1
       WRITE (6, *) ' RS2 = ', RS2
       WRITE (6, *) ' IS2 = ', IS2
       WRITE (6, *) ' L   = ', L
       WRITE (6, *) ' LA1 = ', LA1

       STOP 
      END
