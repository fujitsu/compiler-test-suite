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
       INTEGER IDX3, IDX2, IDX1
       PARAMETER (IDX3 = 10, IDX2 = 10, IDX1 = 10)
       REAL RR1, RR2, RR3
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2., RR3 = 1. / 2.)
       COMMON /CV5287K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR42, LB3, LA3
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR41, RR40, RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, 
     X   RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, 
     X   RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, 
     X   RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4
       DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, 
     X   DD1
       LOGICAL LL1
       COMPLEX CC13, CC12, CC11, CC10, CC9, CC8, CC7, CC6, CC5, CC4
       REAL RR42 (86)
                                                                        
                                                       
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
        IC1(I) = I
        IC1(I+1) = I + 1
        IC1(I+2) = I + 2
        IC1(I+3) = I + 3
        IC1(I+4) = I + 4
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
                                                                        
C$OMP PARALLEL SHARED (IA2,IB2,IC2,RA2,RB2,DB2,DC2,CA2,CB2,RA3,RB3,RC3,
C$OMP& DA3,DB3,CA3,CB3,CC3) PRIVATE (RR4,RR5,RR11,II6,II9,RR15,J,I,II1,
C$OMP& RR12,II7,RR13,II8,II10,RR16,II11,RR17,K)
C$OMP DO 
       DO J=1,10
        RR4 = FLOAT (J * 3)
        RR5 = FLOAT (J + 3)
                                                                        
                                                       
        DO I=1,9,2
         IA2(I,J) = I * J
         IA2(I+1,J) = (I + 1) * J
         IB2(I,J) = I - J
         IB2(I+1,J) = I - J + 1
         IC2(I,J) = I + J
         IC2(I+1,J) = I + J + 1
         RA2(I,J) = I * J + 5
         RA2(I+1,J) = (I + 1) * J + 5
         RB2(I,J) = I - J - 5
         RB2(I+1,J) = I - J - 4
         DB2(I,J) = I - J - 3
         DB2(I+1,J) = I - J - 2
         DC2(I,J) = I + J - 4
         DC2(I+1,J) = I + J - 3
         II9 = I + 2
         II6 = I + 3
         RR15 = FLOAT (II9)
         RR11 = FLOAT (II6)
         CA2(I,J) = CMPLX (RR15, RR4)
         CA2(I+1,J) = CMPLX (RR11, RR4)
         II9 = I - 2
         II6 = I - 1
         RR15 = FLOAT (II9)
         RR11 = FLOAT (II6)
         CB2(I,J) = CMPLX (RR15, RR5)
         CB2(I+1,J) = CMPLX (RR11, RR5)
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
          II10 = I + J + K
          II7 = I + J + K + 1
          RR16 = FLOAT (II10)
          RR12 = FLOAT (II7)
          II11 = I + II1
          II8 = I + II1 + 1
          RR17 = FLOAT (II11)
          RR13 = FLOAT (II8)
          CA3(I,J,K) = CMPLX (RR16, RR17)
          CA3(I+1,J,K) = CMPLX (RR12, RR13)
          II10 = I - J + K
          II7 = I - J + K + 1
          RR16 = FLOAT (II10)
          RR12 = FLOAT (II7)
          II11 = I + J + K
          II8 = I + J + K + 1
          RR17 = FLOAT (II11)
          RR13 = FLOAT (II8)
          CB3(I,J,K) = CMPLX (RR16, RR17)
          CB3(I+1,J,K) = CMPLX (RR12, RR13)
          II10 = I + J + K
          II7 = I + J + K + 1
          RR16 = FLOAT (II10)
          RR12 = FLOAT (II7)
          II11 = I - J + K
          II8 = I - J + K + 1
          RR17 = FLOAT (II11)
          RR13 = FLOAT (II8)
          CC3(I,J,K) = CMPLX (RR16, RR17)
          CC3(I+1,J,K) = CMPLX (RR12, RR13)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
                                                  
       DO I=1,6,5
        RR23 = RA1(I) * 5.
        RR25 = RA1(I+1) * 5.
        RR27 = RA1(I+2) * 5.
        RR29 = RA1(I+3) * 5.
        RR31 = RA1(I+4) * 5.
        RR18 = RR23 + RC1(I)
        RR19 = RR25 + RC1(I+1)
        RR20 = RR27 + RC1(I+2)
        RR21 = RR29 + RC1(I+3)
        RR14 = RR31 + RC1(I+4)
        RR22 = RR18 * RR1
        RR24 = RR19 * RR1
        RR26 = RR20 * RR1
        RR28 = RR21 * RR1
        RR30 = RR14 * RR1
        RA1(I+4) = RR30
        RA1(I+3) = RR28
        RA1(I+2) = RR26
        RA1(I+1) = RR24
        RA1(I) = RR22
        RB1(I+4) = RR31
        RB1(I+3) = RR29
        RB1(I+2) = RR27
        RB1(I+1) = RR25
        RB1(I) = RR23
       END DO
                                                        
                                                  
       DO I=1,10
        IF (RA1(I) .LT. 3.) THEN
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
          CA2(I,J) = CB2(I,J) * 3.
          CA2(I,J+1) = CB2(I,J+1) * 3.
          CA2(I,J+2) = CB2(I,J+2) * 3.
          CA2(I,J+3) = CB2(I,J+3) * 3.
          CA2(I,J+4) = CB2(I,J+4) * 3.
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

                                                        
C$OMP PARALLEL SHARED (RB1,RC1,CB3,CC3,CA3,RA3,RB3,DA3,DB3,RB2,RA2,RC3,
C$OMP& IC1,IB1) PRIVATE (RR9,RR10,CC4,CC5,CC6,CC7,CC8,CC9,CC10,CC11,CC12
C$OMP& ,CC13,RR32,RR33,RR34,RR35,RR36,DD1,DD2,DD3,DD4,DD5,RR37,RR38,RR39
C$OMP& ,RR40,RR41,DD6,DD7,DD8,DD9,DD10,I,J,K)
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
           RR32 = RA3(I,J,K) * RB3(I,J,K)
           RR33 = RA3(I,J,K+1) * RB3(I,J,K+1)
           RR34 = RA3(I,J,K+2) * RB3(I,J,K+2)
           RR35 = RA3(I,J,K+3) * RB3(I,J,K+3)
           RR36 = RA3(I,J,K+4) * RB3(I,J,K+4)
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
           RA3(I,J,K+4) = RR36
           RA3(I,J,K+3) = RR35
           RA3(I,J,K+2) = RR34
           RA3(I,J,K+1) = RR33
           RA3(I,J,K) = RR32
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
           RR37 = RA3(I,J,K) + RC3(I,J,K)
           RR38 = RA3(I,J,K+1) + RC3(I,J,K+1)
           RR39 = RA3(I,J,K+2) + RC3(I,J,K+2)
           RR40 = RA3(I,J,K+3) + RC3(I,J,K+3)
           RR41 = RA3(I,J,K+4) + RC3(I,J,K+4)
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
           RA3(I,J,K+4) = RR41
           RA3(I,J,K+3) = RR40
           RA3(I,J,K+2) = RR39
           RA3(I,J,K+1) = RR38
           RA3(I,J,K) = RR37
          END DO
                                                                        
          IF ((RB1(I) + RC1(I)) * RR3 .GT. RB2(I,J)) THEN
           RA2(I,J) = SIN ((RB1(I) + RC1(I)) * RR3)
          ELSE
           RA2(I,J) = COS (RA2(I,J))
          END IF
         END DO
        END IF
                                                                        
                                                                        
        IF (IC1(I) .NE. 0) THEN
         IC1(I) = MOD (IB1(I), IC1(I))
        END IF
        RC1(I) = RC1(I) * RC1(I)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

                                                        
       DO J=1,10
        DO K=1,J
         IF (IC2(K,J) .NE. 0) THEN
          II4 = IB2(J,K) / IC2(K,J)

                                                        
          IA2(K,J) = II4
         ELSE
          II5 = IB2(J,K)
          IA2(K,J) = II5
         END IF
        END DO
       END DO

                                                        
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
       WRITE (6, *) 'IA2 = ', IA2
       WRITE (6, *) 'IA1 = ', IA1

       STOP 
      END
