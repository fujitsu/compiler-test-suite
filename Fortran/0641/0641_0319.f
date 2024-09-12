      PROGRAM MAIN


       PARAMETER (L1 = 10, L2 = 10, L3 = 10)
       INTEGER*4 IA1(10), IB1(10), IC1(10)
       INTEGER*4 IA2(10,10), IB2(10,10), IC2(10,10)
       REAL*4 RA1(10), RB1(10), RC1(10)
       REAL*4 RA2(10,10), RB2(10,10), RC2(10,10)
       REAL*4 RA3(10,10,10), RB3(10,10,10), RC3(10,10,10)
       REAL*8 DA1(10), DB1(10), DC1(10), DP1(10), DM1(10)
       REAL*8 DA2(10,10), DB2(10,10), DC2(10,10)
       REAL*8 DA3(10,10,10), DB3(10,10,10), DC3(10,10,10)
       REAL*8 QA2(10,10), QB2(10,10), QC2(10,10)
       COMPLEX CA1(10), CB1(10), CC1(10)
       COMPLEX CA2(10,10), CB2(10,10), CC2(10,10)
       COMPLEX CA3(10,10,10), CB3(10,10,10), CC3(10,10,10)
       LOGICAL*4 LA1(10), LB1(10), LC1(10)
       LOGICAL*4 LA3(10,10,10), LB3(10,10,10), LC3(10,10,10)
       REAL RR1, RR2, RR3
       PARAMETER (RR1 = 1. / 3., RR2 = 1. / 2., RR3 = 1. / 4.)
       COMMON /CV6401K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR8, LB3, LA3
       INTEGER II3, II2, II1
       REAL RR7, RR6, RR5, RR4
       REAL RR8 (86)
                                                       
       DO I=1,9,2
        IA1(I) = I
        IA1(I+1) = I + 1
        IB1(I) = I + 2
        IB1(I+1) = I + 3
        IC1(I) = I + 3
        IC1(I+1) = I + 4
        RA1(I) = I + 2
        RA1(I+1) = I + 3
        RB1(I) = I + 3
        RB1(I+1) = I + 4
        RC1(I) = I + 4
        RC1(I+1) = I + 5
        DA1(I) = I * 2
        DA1(I+1) = I * 2 + 2
        DB1(I) = I * 3 - 2
        DB1(I+1) = I * 3 + 1
        DC1(I) = I * 2 + 3
        DC1(I+1) = I * 2 + 5
        DP1(I) = I * 3
        DP1(I+1) = I * 3 + 3
        DM1(I) = I * 2
        DM1(I+1) = I * 2 + 2
        RR6 = FLOAT (I)
        RR4 = FLOAT (I + 1)
        RR7 = FLOAT (I)
        RR5 = FLOAT (I + 1)
        CA1(I) = CMPLX (RR6, RR7)
        CA1(I+1) = CMPLX (RR4, RR5)
        II3 = I + 5
        II2 = I + 6
        RR6 = FLOAT (II3)
        RR4 = FLOAT (II2)
        RR7 = FLOAT (I)
        RR5 = FLOAT (I + 1)
        CB1(I) = CMPLX (RR6, RR7)
        CB1(I+1) = CMPLX (RR4, RR5)
        LA1(I) = MOD (I, 2) .EQ. 0
        LA1(I+1) = MOD (I + 1, 2) .EQ. 0
        LB1(I) = MOD (I, 3) .EQ. 0
        LB1(I+1) = MOD (I + 1, 3) .EQ. 0
        LC1(I) = MOD (I, 4) .EQ. 0
        LC1(I+1) = MOD (I + 1, 4) .EQ. 0
       END DO

       RMAX = -99999.
       IMAX = 0
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) + RC1(I)
        RA1(I+1) = RB1(I+1) + RC1(I+1)
        RA1(I+2) = RB1(I+2) + RC1(I+2)
        RA1(I+3) = RB1(I+3) + RC1(I+3)
        RA1(I+4) = RB1(I+4) + RC1(I+4)
       END DO
                                                                        
       DO I=1,10
        IF (RA1(I) .LE. 17.) THEN
         IF (I .LT. 5) THEN
          IF (RB1(I) .GT. RMAX) THEN
           RMAX = RB1(I)
           IMAX = I
          END IF
          DA1(I) = DB1(I) + DC1(I)
         ELSE
          DA1(I) = DB1(I) - DC1(I)
         END IF
         IA1(I) = IB1(I) * IC1(I)
        END IF
       END DO
                                                                        
       WRITE (6, *) 'RMAX= ', RMAX
       WRITE (6, *) 'IMAX= ', IMAX
       WRITE (6, *) 'RB1= ', RB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
                                                                        
       RMIN = 99999.
       IMIN = 0
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) + RC1(I)
        RA1(I+1) = RB1(I+1) + RC1(I+1)
        RA1(I+2) = RB1(I+2) + RC1(I+2)
        RA1(I+3) = RB1(I+3) + RC1(I+3)
        RA1(I+4) = RB1(I+4) + RC1(I+4)
       END DO
                                                                        
       DO I=1,10
        IF (I .LE. 9) THEN
         IF (RA1(I) .GT. 17.) THEN
          IF (RB1(I) .LT. RMIN) THEN
           RMIN = RB1(I)
           IMIN = I
          END IF
          DA1(I) = DB1(I) + DC1(I)
         ELSE
          DA1(I) = DB1(I) - DC1(I)
         END IF
         IA1(I) = IB1(I) * IC1(I)
        END IF
       END DO
                                                                        
       WRITE (6, *) 'RMIN= ', RMIN
       WRITE (6, *) 'IMIN= ', IMIN
       WRITE (6, *) 'RB1= ', RB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
                                                                        
       K = 0
       M = 0
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) * RC1(I)
        RA1(I+1) = RB1(I+1) * RC1(I+1)
        RA1(I+2) = RB1(I+2) * RC1(I+2)
        RA1(I+3) = RB1(I+3) * RC1(I+3)
        RA1(I+4) = RB1(I+4) * RC1(I+4)
       END DO
                                                                        
       DO I=1,10
        IF (I .LE. 9) THEN
         IF (RA1(I) .LT. 23.) THEN
          IF (RB1(I) .LT. 100.) THEN
           K = K + 1
           DP1(K) = RB1(I)
          ELSE
           M = M + 1
           DM1(I) = RB1(M)
          END IF
          DA1(I) = DB1(I) + DC1(I)
         ELSE
          DA1(I) = DB1(I) - DC1(I)
         END IF
                                                                        
         IA1(I) = IB1(I) * IC1(I)
                                                                        
         IF (IC1(I) .NE. 0) THEN
          IA1(I) = IB1(I) * MOD (IB1(I), IC1(I))
         END IF
        END IF
       END DO
                                                                        
       WRITE (6, *) 'DP1= ', DP1
       WRITE (6, *) 'DM1= ', DM1
       WRITE (6, *) 'RB1= ', RB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
                                                                        
       RMAX = -99999.
       IMAX = 0
       RMIN = 99999.
       IMIN = 0
       K = 0
       M = 0
       S = -99999.
       RK = -99999.
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) + RC1(I)
        RA1(I+1) = RB1(I+1) + RC1(I+1)
        RA1(I+2) = RB1(I+2) + RC1(I+2)
        RA1(I+3) = RB1(I+3) + RC1(I+3)
        RA1(I+4) = RB1(I+4) + RC1(I+4)
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA1,RB1,S,LC1,LA1,K,DP1,LB1,CA1,CB1,RK,RC1,M,DM1,
C$OMP& RMAX,IMAX,RMIN,IMIN,DA1,DB1,DC1,IA1,IB1,IC1) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,2
        GO TO (14, 19), II1
        DO I=1,10
         IF (RA1(I) .GT. RB1(I) * 2.) THEN
          S = RA1(I)
          IF (.NOT.LC1(11-I)) THEN
           IF (LA1(I)) THEN
            K = K + 1
            DP1(K) = RA1(I)
           END IF
          END IF
         END IF
        END DO
C$OMP FLUSH
        GO TO 20
                                                                        
   14   DO I=1,10
                                                                        
         IF (LB1(I)) THEN
          CA1(I) = CB1(I) * 2.
          IF (RB1(I) - 7.) 15, 16, 17
   15     RK = RB1(I) * RR1
          GO TO 18
   16     RK = RB1(I) * RR2
          GO TO 18
   17     RK = RB1(I) * RR3
          IF (RC1(I) .GT. 0) THEN
           M = M + 1
           DM1(I) = RC1(M)
          END IF
                                                                        
   18     CB1(I) = 5. + CA1(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 20
                                                                        
   19   DO I=1,10
                                                                        
         IF (RA1(I) .LE. 17.) THEN
          IF (I .LE. 4) THEN
           IF (RC1(I) .GT. RMAX) THEN
            RMAX = RC1(I)
            IMAX = I
           END IF
          ELSE
           IF (RC1(I) .LT. RMIN) THEN
            RMIN = RC1(I)
            IMIN = I
           END IF
           DA1(I) = DB1(I) - DC1(I)
          END IF
          IA1(I) = IB1(I) * IC1(I)
         END IF
        END DO
C$OMP FLUSH
   20   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) 'RMAX= ', RMAX
       WRITE (6, *) 'IMAX= ', IMAX
       WRITE (6, *) 'RMIN= ', RMIN
       WRITE (6, *) 'IMIN= ', IMIN
       WRITE (6, *) 'RC1= ', RC1
       WRITE (6, *) 'DP1= ', DP1
       WRITE (6, *) 'DM1= ', DM1
       WRITE (6, *) '  S= ', S
       WRITE (6, *) ' RK= ', RK
       WRITE (6, *) 'CA1= ', CA1
       WRITE (6, *) 'CB1= ', CB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
                                                                        
                                                                        
       STOP 
      END
 
 
 
 
 
 
 
 
