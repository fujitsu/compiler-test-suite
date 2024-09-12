      PROGRAM MAIN

       INTEGER*4 IA1(50), IB1(50), IC1(50), IS1
       LOGICAL*4 LA1(50), LB1(50), LC1(50), LS1
       REAL RA1(50), RB1(50), RC1(50), RS1
       REAL*8 DA1(50), DB1(50), DC1(50), DS1
       COMPLEX*8 CA1(50), CB1(50), CC1(50), CS1
       COMPLEX*16 CDA1(50), CDB1(50), CDC1(50), CDS1
       INTEGER N3, N2, N1
       PARAMETER (N3 = 10, N2 = 10, N1 = 50)
       INTEGER II1

C$OMP PARALLEL SHARED (IA1,IC1,RA1,RB1,RC1,LB1,DA1,DB1,DC1,CB1,CDA1,CDB1
C$OMP& ,CDC1) PRIVATE (I)
C$OMP DO 
       DO I=1,46,5
        IA1(I) = 0
        IA1(I+1) = 0
        IA1(I+2) = 0
        IA1(I+3) = 0
        IA1(I+4) = 0
        IC1(I) = -I
        IC1(I+1) = -1 - I
        IC1(I+2) = -2 - I
        IC1(I+3) = -3 - I
        IC1(I+4) = -4 - I
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
        RC1(I) = -I
        RC1(I+1) = -1 - I
        RC1(I+2) = -2 - I
        RC1(I+3) = -3 - I
        RC1(I+4) = -4 - I
        LB1(I) = 0 .EQ. MOD (I, 2)
        LB1(I+1) = 0 .EQ. MOD (I + 1, 2)
        LB1(I+2) = 0 .EQ. MOD (I + 2, 2)
        LB1(I+3) = 0 .EQ. MOD (I + 3, 2)
        LB1(I+4) = 0 .EQ. MOD (I + 4, 2)
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
        CB1(I) = I
        CB1(I+1) = I + 1
        CB1(I+2) = I + 2
        CB1(I+3) = I + 3
        CB1(I+4) = I + 4
        CDA1(I) = 0
        CDA1(I+1) = 0
        CDA1(I+2) = 0
        CDA1(I+3) = 0
        CDA1(I+4) = 0
        CDB1(I) = I
        CDB1(I+1) = I + 1
        CDB1(I+2) = I + 2
        CDB1(I+3) = I + 3
        CDB1(I+4) = I + 4
        CDC1(I) = -I
        CDC1(I+1) = -1 - I
        CDC1(I+2) = -2 - I
        CDC1(I+3) = -3 - I
        CDC1(I+4) = -4 - I
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       RS1 = 0.
       J = 0
       DS1 = 0D0
       DO I=1,10
        IF (LB1(I)) THEN
         RS1 = RS1 + RB1(I)
         J = J + 1
         DA1(J) = DB1(I) * DC1(I)
         DS1 = DS1 + DB1(J)
        END IF
       END DO
       WRITE (6, *) ' RS1 = ', RS1
       WRITE (6, *) ' J   = ', J
       WRITE (6, *) ' DA1 = ', DA1
       WRITE (6, *) ' DS1 = ', DS1

       K = 1
       CS1 = (0., 0.)
       IF (LB1(2)) THEN
        II1 = IC1(3)
        DO I=1,6,5
         CS1 = CS1 + CB1(I)
         DA1(I) = DB1(I) * DC1(I)
         DS1 = DS1 + DB1(I+1)
         II1 = II1 + IA1(I+1)
         CS1 = CS1 + CB1(I+1)
         DA1(I+1) = DB1(I+1) * DC1(I+1)
         DS1 = DS1 + DB1(I+2)
         II1 = II1 + IA1(I+2)
         CS1 = CS1 + CB1(I+2)
         DA1(I+2) = DB1(I+2) * DC1(I+2)
         DS1 = DS1 + DB1(I+3)
         II1 = II1 + IA1(I+3)
         CS1 = CS1 + CB1(I+3)
         DA1(I+3) = DB1(I+3) * DC1(I+3)
         DS1 = DS1 + DB1(I+4)
         II1 = II1 + IA1(I+4)
         CS1 = CS1 + CB1(I+4)
         DA1(I+4) = DB1(I+4) * DC1(I+4)
         DS1 = DS1 + DB1(I+5)
         II1 = II1 + IA1(I+5)
        END DO
        IC1(3) = II1
        K = 11
       END IF
       WRITE (6, *) ' CS1 = ', CS1
       WRITE (6, *) ' DA1 = ', DA1
       WRITE (6, *) ' K   = ', K
       WRITE (6, *) ' DS1 = ', DS1
       WRITE (6, *) ' IC1 = ', IC1

       L = 1
       DO I=1,10
        IF (I .GT. 6) THEN
         CS1 = CS1 + CB1(I)
         DA1(L) = DB1(I) * DC1(I)
         RA1(L) = RB1(I) + RC1(I)
         CDA1(L) = CDB1(I) - CDC1(I)
         L = L + 2
         IC1(7) = IC1(7) + IA1(L)
         DS1 = DS1 + DB1(L)
        END IF
       END DO
       WRITE (6, *) ' CS1 = ', CS1
       WRITE (6, *) ' DA1 = ', DA1
       WRITE (6, *) ' RA1 = ', RA1
       WRITE (6, *) ' CDA1 = ', CDA1
       WRITE (6, *) ' L   = ', L
       WRITE (6, *) ' DS1 = ', DS1
       WRITE (6, *) ' IC1 = ', IC1
       STOP 
      END
