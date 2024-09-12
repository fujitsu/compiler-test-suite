      PROGRAM MAIN

       INTEGER*4 IA1(50), IB1(50), IC1(50), IS1, IS2
       LOGICAL*4 LA1(50), LB1(50), LC1(50), LS1, LS2
       REAL RA1(50), RB1(50), RC1(50), RS1, RS2
       REAL*8 DA1(50), DB1(50), DC1(50), DS1, DS2
       COMPLEX*8 CA1(50), CB1(50), CC1(50), CS1, CS2
       COMPLEX*16 CDA1(50), CDB1(50), CDC1(50), CDS1, CDS2
       INTEGER N3, N2, N1
       PARAMETER (N3 = 10, N2 = 10, N1 = 50)
       LOGICAL LL5, LL4, LL3, LL2, LL1

C$OMP PARALLEL SHARED (RA1,RB1,LA1,LC1,DA1,DB1,DC1,CA1,CB1,CC1) 
C$OMP& PRIVATE (LL1,LL2,LL3,LL4,LL5,I)
C$OMP DO 
       DO I=1,46,5
        RA1(I) = 0.
        RA1(I+1) = 0.
        RA1(I+2) = 0.
        RA1(I+3) = 0.
        RA1(I+4) = 0.
        RB1(I) = I
        RB1(I+1) = I + 1
        RB1(I+2) = I + 2
        RB1(I+3) = I + 3
        RB1(I+4) = I + 4
        LA1(I) = .TRUE.
        LA1(I+1) = .TRUE.
        LA1(I+2) = .TRUE.
        LA1(I+3) = .TRUE.
        LA1(I+4) = .TRUE.
        LL1 = 0 .EQ. MOD (I, 2)
        LL2 = 0 .EQ. MOD (I + 1, 2)
        LL3 = 0 .EQ. MOD (I + 2, 2)
        LL4 = 0 .EQ. MOD (I + 3, 2)
        LL5 = 0 .EQ. MOD (I + 4, 2)
        LC1(I) = .NOT.LL1
        LC1(I+1) = .NOT.LL2
        LC1(I+2) = .NOT.LL3
        LC1(I+3) = .NOT.LL4
        LC1(I+4) = .NOT.LL5
        DA1(I) = 0D0
        DA1(I+1) = 0D0
        DA1(I+2) = 0D0
        DA1(I+3) = 0D0
        DA1(I+4) = 0D0
        DB1(I) = I
        DB1(I+1) = I + 1
        DB1(I+2) = I + 2
        DB1(I+3) = I + 3
        DB1(I+4) = I + 4
        DC1(I) = -I
        DC1(I+1) = -1 - I
        DC1(I+2) = -2 - I
        DC1(I+3) = -3 - I
        DC1(I+4) = -4 - I
        CA1(I) = (0., 0.)
        CA1(I+1) = (0., 0.)
        CA1(I+2) = (0., 0.)
        CA1(I+3) = (0., 0.)
        CA1(I+4) = (0., 0.)
        CB1(I) = I
        CB1(I+1) = I + 1
        CB1(I+2) = I + 2
        CB1(I+3) = I + 3
        CB1(I+4) = I + 4
        CC1(I) = -I
        CC1(I+1) = -1 - I
        CC1(I+2) = -2 - I
        CC1(I+3) = -3 - I
        CC1(I+4) = -4 - I
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

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
