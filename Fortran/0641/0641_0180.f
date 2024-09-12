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
       LOGICAL*4 LA3(10,10,10), LB3(10,10,10), LC3(10,10,10)
       REAL RR1, RR2, RR3
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2., RR3 = 1. / 2.)
       COMMON /CV5286K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR30, LB3, LA3
       INTEGER II12, II11, II10, II9, II8, II7, II6, II5, II4, II3, II2
     X   , II1
       REAL RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, RR20, 
     X   RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9
     X   , RR8, RR7, RR6, RR5, RR4
       DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, 
     X   DD1
       LOGICAL LL1
       COMPLEX CC13, CC12, CC11, CC10, CC9, CC8, CC7, CC6, CC5, CC4
       REAL RR30 (86)
                                                                        
                                                       
       DO I=1,6,5
        IA1(I) = 11 - I
        IA1(I+1) = 10 - I
        IA1(I+2) = 9 - I
        IA1(I+3) = 8 - I
        IA1(I+4) = 7 - I
        IB1(I) = I
        IB1(I+1) = I + 1
        IB1(I+2) = I + 2
        IB1(I+3) = I + 3
        IB1(I+4) = I + 4
        RA1(I) = I + 2
        RA1(I+1) = I + 3
        RA1(I+2) = I + 4
        RA1(I+3) = I + 5
        RA1(I+4) = I + 6
        RB1(I) = I + 3
        RB1(I+1) = I + 4
        RB1(I+2) = I + 5
        RB1(I+3) = I + 6
        RB1(I+4) = I + 7
        RC1(I) = I + 4
        RC1(I+1) = I + 5
        RC1(I+2) = I + 6
        RC1(I+3) = I + 7
        RC1(I+4) = I + 8
        DA1(I) = I * 2
        DA1(I+1) = I * 2 + 2
        DA1(I+2) = I * 2 + 4
        DA1(I+3) = I * 2 + 6
        DA1(I+4) = I * 2 + 8
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA2,RB2,DB2,DC2,CA2,CB2,RA3,RB3,RC3,DA3,DB3,CA3,
C$OMP& CB3,CC3) PRIVATE (RR4,RR5,RR11,II4,II7,II8,II9,II10,RR14,RR15,
C$OMP& RR16,RR17,J,I,II1,RR12,II5,RR13,II6,II11,RR18,II12,RR19,K)
C$OMP DO 
       DO J=1,10
        RR4 = FLOAT (J * 3)
        RR5 = FLOAT (J + 3)
                                                                        
                                                       
        DO I=1,6,5
         RA2(I,J) = I * J + 5
         RA2(I+1,J) = (I + 1) * J + 5
         RA2(I+2,J) = (I + 2) * J + 5
         RA2(I+3,J) = (I + 3) * J + 5
         RA2(I+4,J) = (I + 4) * J + 5
         RB2(I,J) = I - J - 5
         RB2(I+1,J) = I - J - 4
         RB2(I+2,J) = I - J - 3
         RB2(I+3,J) = I - J - 2
         RB2(I+4,J) = I - J - 1
         DB2(I,J) = I - J - 3
         DB2(I+1,J) = I - J - 2
         DB2(I+2,J) = I - J - 1
         DB2(I+3,J) = I - J
         DB2(I+4,J) = I - J + 1
         DC2(I,J) = I + J - 4
         DC2(I+1,J) = I + J - 3
         DC2(I+2,J) = I + J - 2
         DC2(I+3,J) = I + J - 1
         DC2(I+4,J) = I + J
         II7 = I + 2
         II8 = I + 3
         II9 = I + 4
         II10 = I + 5
         II4 = I + 6
         RR14 = FLOAT (II7)
         RR15 = FLOAT (II8)
         RR16 = FLOAT (II9)
         RR17 = FLOAT (II10)
         RR11 = FLOAT (II4)
         CA2(I,J) = CMPLX (RR14, RR4)
         CA2(I+1,J) = CMPLX (RR15, RR4)
         CA2(I+2,J) = CMPLX (RR16, RR4)
         CA2(I+3,J) = CMPLX (RR17, RR4)
         CA2(I+4,J) = CMPLX (RR11, RR4)
         II7 = I - 2
         II8 = I - 1
         II9 = I
         II10 = I + 1
         II4 = I + 2
         RR14 = FLOAT (II7)
         RR15 = FLOAT (II8)
         RR16 = FLOAT (II9)
         RR17 = FLOAT (II10)
         RR11 = FLOAT (II4)
         CB2(I,J) = CMPLX (RR14, RR5)
         CB2(I+1,J) = CMPLX (RR15, RR5)
         CB2(I+2,J) = CMPLX (RR16, RR5)
         CB2(I+3,J) = CMPLX (RR17, RR5)
         CB2(I+4,J) = CMPLX (RR11, RR5)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
                                                                        
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,10
         II1 = J * K
                                                                        
                                                       
         DO I=1,9,2
          RA3(I,J,K) = I + J + K
          RA3(I+1,J,K) = I + J + K + 1
          RB3(I,J,K) = I - J + K
          RB3(I+1,J,K) = I - J + K + 1
          RC3(I,J,K) = I + J - K
          RC3(I+1,J,K) = I + J - K + 1
          DA3(I,J,K) = I + J - K
          DA3(I+1,J,K) = I + J - K + 1
          DB3(I,J,K) = I * J + K
          DB3(I+1,J,K) = (I + 1) * J + K
          II11 = I + J + K
          II5 = I + J + K + 1
          RR18 = FLOAT (II11)
          RR12 = FLOAT (II5)
          II12 = I + II1
          II6 = I + II1 + 1
          RR19 = FLOAT (II12)
          RR13 = FLOAT (II6)
          CA3(I,J,K) = CMPLX (RR18, RR19)
          CA3(I+1,J,K) = CMPLX (RR12, RR13)
          II11 = I - J + K
          II5 = I - J + K + 1
          RR18 = FLOAT (II11)
          RR12 = FLOAT (II5)
          II12 = I + J + K
          II6 = I + J + K + 1
          RR19 = FLOAT (II12)
          RR13 = FLOAT (II6)
          CB3(I,J,K) = CMPLX (RR18, RR19)
          CB3(I+1,J,K) = CMPLX (RR12, RR13)
          II11 = I + J + K
          II5 = I + J + K + 1
          RR18 = FLOAT (II11)
          RR12 = FLOAT (II5)
          II12 = I - J + K
          II6 = I - J + K + 1
          RR19 = FLOAT (II12)
          RR13 = FLOAT (II6)
          CC3(I,J,K) = CMPLX (RR18, RR19)
          CC3(I+1,J,K) = CMPLX (RR12, RR13)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
                                                                        
       DO I=1,10
        S = RA1(I)
        RA1(I) = (RB1(I) + RC1(I)) * RR1
        IF (RA1(I) .LT. S) THEN
                                                                        
         RR6 = RA1(I)
         DO J=1,6,5
          CA2(I,J) = CB2(I,J) * RR6
          CA2(I,J+1) = CB2(I,J+1) * RR6
          CA2(I,J+2) = CB2(I,J+2) * RR6
          CA2(I,J+3) = CB2(I,J+3) * RR6
          CA2(I,J+4) = CB2(I,J+4) * RR6
         END DO
                                                                        
         II2 = IA1(I)
         DO J=1,6,5
          DB2(II2,IB1(J)) = DC2(I,J)
          DB2(II2,IB1(J+1)) = DC2(I,J+1)
          DB2(II2,IB1(J+2)) = DC2(I,J+2)
          DB2(II2,IB1(J+3)) = DC2(I,J+3)
          DB2(II2,IB1(J+4)) = DC2(I,J+4)
         END DO
        ELSE
         DO J=1,6,5
          CA2(I,J) = CB2(I,J) * S
          CA2(I,J+1) = CB2(I,J+1) * S
          CA2(I,J+2) = CB2(I,J+2) * S
          CA2(I,J+3) = CB2(I,J+3) * S
          CA2(I,J+4) = CB2(I,J+4) * S
         END DO
         II3 = IA1(I)
         DO J=1,6,5
          DB2(II3,IB1(J)) = DC2(I,J)
          DB2(II3,IB1(J+1)) = DC2(I,J+1)
          DB2(II3,IB1(J+2)) = DC2(I,J+2)
          DB2(II3,IB1(J+3)) = DC2(I,J+3)
          DB2(II3,IB1(J+4)) = DC2(I,J+4)
         END DO
        END IF
       END DO
                                                                        
       WRITE (6, *) ' CA2 =', CA2
       WRITE (6, *) ' DB2 =', DB2

                                                                        
       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
                                                                        
       DO I=1,10
        RA1(I) = (RB1(I) + RC1(I)) * RR2
        LL1 = RA1(I) .LT. RB1(I)
        IF (LL1) THEN
         RR7 = RA1(I)
                                                                        
         DO J=1,6,5
          CA2(I,J) = CB2(I,J) * RR7
          CA2(I,J+1) = CB2(I,J+1) * RR7
          CA2(I,J+2) = CB2(I,J+2) * RR7
          CA2(I,J+3) = CB2(I,J+3) * RR7
          CA2(I,J+4) = CB2(I,J+4) * RR7
         END DO
        END IF
        IF (.NOT.LL1) THEN
         RR8 = RB1(I)
         DO J=1,6,5
          CA2(I,J) = CB2(I,J) * RR8
          CA2(I,J+1) = CB2(I,J+1) * RR8
          CA2(I,J+2) = CB2(I,J+2) * RR8
          CA2(I,J+3) = CB2(I,J+3) * RR8
          CA2(I,J+4) = CB2(I,J+4) * RR8
         END DO
        END IF
       END DO
                                                                        
                                                                        
       DO I=1,6,5
                                                                        
        DB2(IA1(I),3) = DC2(3,I)
        DB2(IA1(I+1),3) = DC2(3,I+1)
        DB2(IA1(I+2),3) = DC2(3,I+2)
        DB2(IA1(I+3),3) = DC2(3,I+3)
        DB2(IA1(I+4),3) = DC2(3,I+4)
       END DO
                                                                        
       WRITE (6, *) ' CA2 =', CA2
       WRITE (6, *) ' DB2 =', DB2

       WRITE (6, *) '----- TEST NO.3 -----'

                                                                        
C$OMP PARALLEL SHARED (RB1,RC1,CB3,CC3,CA3,RA3,RB3,DA3,DB3,RB2,RA2,RC3) 
C$OMP& PRIVATE (RR9,RR10,CC4,CC5,CC6,CC7,CC8,CC9,CC10,CC11,CC12,CC13,
C$OMP& RR20,RR21,RR22,RR23,RR24,DD1,DD2,DD3,DD4,DD5,RR25,RR26,RR27,RR28,
C$OMP& RR29,DD6,DD7,DD8,DD9,DD10,I,J,K)
C$OMP DO 
       DO I=1,10
        IF (COS ((RB1(I) + RC1(I)) * RR3) .GE. SIN (RB1(I))) THEN
                                                                        
         DO J=1,10
          RR9 = (RB1(I) + RC1(I)) * RR3
          DO K=1,6,5
           CC6 = CB3(I,J,K) * CC3(I,J,K)
           CC7 = CB3(I,J,K+1) * CC3(I,J,K+1)
           CC8 = CB3(I,J,K+2) * CC3(I,J,K+2)
           CC9 = CB3(I,J,K+3) * CC3(I,J,K+3)
           CC4 = CB3(I,J,K+4) * CC3(I,J,K+4)
           CA3(I,J,K) = RR9 + CC6
           CA3(I,J,K+1) = RR9 + CC7
           CA3(I,J,K+2) = RR9 + CC8
           CA3(I,J,K+3) = RR9 + CC9
           CA3(I,J,K+4) = RR9 + CC4
           RR20 = RA3(I,J,K) * RB3(I,J,K)
           RR21 = RA3(I,J,K+1) * RB3(I,J,K+1)
           RR22 = RA3(I,J,K+2) * RB3(I,J,K+2)
           RR23 = RA3(I,J,K+3) * RB3(I,J,K+3)
           RR24 = RA3(I,J,K+4) * RB3(I,J,K+4)
           DD1 = DA3(I,J,K) / DB3(I,J,K)
           DD2 = DA3(I,J,K+1) / DB3(I,J,K+1)
           DD3 = DA3(I,J,K+2) / DB3(I,J,K+2)
           DD4 = DA3(I,J,K+3) / DB3(I,J,K+3)
           DD5 = DA3(I,J,K+4) / DB3(I,J,K+4)
           DA3(I,J,K+4) = DD5
           DA3(I,J,K+3) = DD4
           DA3(I,J,K+2) = DD3
           DA3(I,J,K+1) = DD2
           DA3(I,J,K) = DD1
           RA3(I,J,K+4) = RR24
           RA3(I,J,K+3) = RR23
           RA3(I,J,K+2) = RR22
           RA3(I,J,K+1) = RR21
           RA3(I,J,K) = RR20
          END DO
                                                                        
          IF ((RB1(I) + RC1(I)) * RR3 .GT. RB2(I,J)) THEN
           RA2(I,J) = SIN ((RB1(I) + RC1(I)) * RR3)
          ELSE
           RA2(I,J) = COS (RA2(I,J))
          END IF
         END DO
        ELSE
         DO J=1,10
          RR10 = (RB1(I) + RC1(I)) * RR3
          DO K=1,6,5
           CC10 = CB3(I,J,K) * CC3(I,J,K)
           CC11 = CB3(I,J,K+1) * CC3(I,J,K+1)
           CC12 = CB3(I,J,K+2) * CC3(I,J,K+2)
           CC13 = CB3(I,J,K+3) * CC3(I,J,K+3)
           CC5 = CB3(I,J,K+4) * CC3(I,J,K+4)
           CA3(I,J,K) = RR10 + CC10
           CA3(I,J,K+1) = RR10 + CC11
           CA3(I,J,K+2) = RR10 + CC12
           CA3(I,J,K+3) = RR10 + CC13
           CA3(I,J,K+4) = RR10 + CC5
           RR25 = RA3(I,J,K) + RC3(I,J,K)
           RR26 = RA3(I,J,K+1) + RC3(I,J,K+1)
           RR27 = RA3(I,J,K+2) + RC3(I,J,K+2)
           RR28 = RA3(I,J,K+3) + RC3(I,J,K+3)
           RR29 = RA3(I,J,K+4) + RC3(I,J,K+4)
           DD6 = DA3(I,J,K) / DB3(I,J,K)
           DD7 = DA3(I,J,K+1) / DB3(I,J,K+1)
           DD8 = DA3(I,J,K+2) / DB3(I,J,K+2)
           DD9 = DA3(I,J,K+3) / DB3(I,J,K+3)
           DD10 = DA3(I,J,K+4) / DB3(I,J,K+4)
           DA3(I,J,K+4) = DD10
           DA3(I,J,K+3) = DD9
           DA3(I,J,K+2) = DD8
           DA3(I,J,K+1) = DD7
           DA3(I,J,K) = DD6
           RA3(I,J,K+4) = RR29
           RA3(I,J,K+3) = RR28
           RA3(I,J,K+2) = RR27
           RA3(I,J,K+1) = RR26
           RA3(I,J,K) = RR25
          END DO
                                                                        
          IF ((RB1(I) + RC1(I)) * RR3 .GT. RB2(I,J)) THEN
           RA2(I,J) = SIN ((RB1(I) + RC1(I)) * RR3)
          ELSE
           RA2(I,J) = COS (RA2(I,J))
          END IF
         END DO
        END IF
        RC1(I) = RC1(I) * RC1(I)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

                                                                        
       DO I=1,6,5
                                                                        
        DA1(I) = DB2(IA1(IB1(I)),5)
        DA1(I+1) = DB2(IA1(IB1(I+1)),5)
        DA1(I+2) = DB2(IA1(IB1(I+2)),5)
        DA1(I+3) = DB2(IA1(IB1(I+3)),5)
        DA1(I+4) = DB2(IA1(IB1(I+4)),5)
       END DO


       WRITE (6, *) 'DA1 = ', DA1
       WRITE (6, *) 'RA3 = ', RA3
       WRITE (6, *) 'CA3 = ', CA3

       STOP 
      END
 
