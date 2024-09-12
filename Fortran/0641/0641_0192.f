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
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)
       COMMON /CV5299K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR23, LB3, LA3
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, 
     X   RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3
       DOUBLE PRECISION DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL1
       COMPLEX CC9, CC8, CC7, CC6, CC5, CC4
       REAL RR23 (86)
                                                       
       DO I=1,6,5
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
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA2,RB2,CA2,CB2,RA3,RB3,RC3,DA3,DB3,CA3,CB3,CC3) 
C$OMP& PRIVATE (RR3,RR4,RR8,II2,II5,II6,II7,II8,RR11,RR12,RR13,RR14,J,I,
C$OMP& II1,RR9,II3,RR10,II4,II9,RR15,II10,RR16,K)
C$OMP DO 
       DO J=1,10
        RR3 = FLOAT (J * 3)
        RR4 = FLOAT (J + 3)
                                                                        
                                                       
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
         II5 = I + 2
         II6 = I + 3
         II7 = I + 4
         II8 = I + 5
         II2 = I + 6
         RR11 = FLOAT (II5)
         RR12 = FLOAT (II6)
         RR13 = FLOAT (II7)
         RR14 = FLOAT (II8)
         RR8 = FLOAT (II2)
         CA2(I,J) = CMPLX (RR11, RR3)
         CA2(I+1,J) = CMPLX (RR12, RR3)
         CA2(I+2,J) = CMPLX (RR13, RR3)
         CA2(I+3,J) = CMPLX (RR14, RR3)
         CA2(I+4,J) = CMPLX (RR8, RR3)
         II5 = I - 2
         II6 = I - 1
         II7 = I
         II8 = I + 1
         II2 = I + 2
         RR11 = FLOAT (II5)
         RR12 = FLOAT (II6)
         RR13 = FLOAT (II7)
         RR14 = FLOAT (II8)
         RR8 = FLOAT (II2)
         CB2(I,J) = CMPLX (RR11, RR4)
         CB2(I+1,J) = CMPLX (RR12, RR4)
         CB2(I+2,J) = CMPLX (RR13, RR4)
         CB2(I+3,J) = CMPLX (RR14, RR4)
         CB2(I+4,J) = CMPLX (RR8, RR4)
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
          II9 = I + J + K
          II3 = I + J + K + 1
          RR15 = FLOAT (II9)
          RR9 = FLOAT (II3)
          II10 = I + II1
          II4 = I + II1 + 1
          RR16 = FLOAT (II10)
          RR10 = FLOAT (II4)
          CA3(I,J,K) = CMPLX (RR15, RR16)
          CA3(I+1,J,K) = CMPLX (RR9, RR10)
          II9 = I - J + K
          II3 = I - J + K + 1
          RR15 = FLOAT (II9)
          RR9 = FLOAT (II3)
          II10 = I + J + K
          II4 = I + J + K + 1
          RR16 = FLOAT (II10)
          RR10 = FLOAT (II4)
          CB3(I,J,K) = CMPLX (RR15, RR16)
          CB3(I+1,J,K) = CMPLX (RR9, RR10)
          II9 = I + J + K
          II3 = I + J + K + 1
          RR15 = FLOAT (II9)
          RR9 = FLOAT (II3)
          II10 = I - J + K
          II4 = I - J + K + 1
          RR16 = FLOAT (II10)
          RR10 = FLOAT (II4)
          CC3(I,J,K) = CMPLX (RR15, RR16)
          CC3(I+1,J,K) = CMPLX (RR9, RR10)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
       DO I=2,9
        S = RA1(I)
        RA1(I) = (RB1(I) + RC1(I)) * RR1
        LL1 = RA1(I) .LT. S
        IF (LL1) THEN
         RR5 = RA1(I)
                                                                        
         CA2(I,2) = CB2(I,2) * RR5
         CA2(I,3) = CB2(I,3) * RR5
         CA2(I,4) = CB2(I,4) * RR5
         CA2(I,5) = CB2(I,5) * RR5
         CA2(I,6) = CB2(I,6) * RR5
         CA2(I,7) = CB2(I,7) * RR5
        END IF
        IF (.NOT.LL1) THEN
         CA2(I,2) = CB2(I,2) * S
         CA2(I,3) = CB2(I,3) * S
         CA2(I,4) = CB2(I,4) * S
         CA2(I,5) = CB2(I,5) * S
         CA2(I,6) = CB2(I,6) * S
         CA2(I,7) = CB2(I,7) * S
        END IF
       END DO
                                                                        
       WRITE (6, *) ' CA2 =', CA2

       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
C$OMP PARALLEL SHARED (RB1,RC1,CB3,CC3,CA3,RA3,RB3,DA3,DB3,RB2,RA2,RC3) 
C$OMP& PRIVATE (RR6,RR7,CC4,CC5,CC6,CC7,CC8,CC9,RR17,RR18,RR19,DD1,DD2,
C$OMP& DD3,RR20,RR21,RR22,DD4,DD5,DD6,I,J,K)
C$OMP DO 
       DO I=10,1,-2
        IF (COS ((RB1(I) + RC1(I)) * RR2) .GE. SIN (RB1(I))) THEN
                                                                        
         DO J=10,2,-1
          RR6 = (RB1(I) + RC1(I)) * RR2
          DO K=10,4,-3
           CC6 = CB3(I,J,K) * CC3(I,J,K)
           CC7 = CB3(I,J,K-1) * CC3(I,J,K-1)
           CC4 = CB3(I,J,K-2) * CC3(I,J,K-2)
           CA3(I,J,K) = RR6 + CC6
           CA3(I,J,K-1) = RR6 + CC7
           CA3(I,J,K-2) = RR6 + CC4
           RR17 = RA3(I,J,K) * RB3(I,J,K)
           RR18 = RA3(I,J,K-1) * RB3(I,J,K-1)
           RR19 = RA3(I,J,K-2) * RB3(I,J,K-2)
           DD1 = DA3(I,J,K) / DB3(I,J,K)
           DD2 = DA3(I,J,K-1) / DB3(I,J,K-1)
           DD3 = DA3(I,J,K-2) / DB3(I,J,K-2)
           DA3(I,J,K-2) = DD3
           DA3(I,J,K-1) = DD2
           DA3(I,J,K) = DD1
           RA3(I,J,K-2) = RR19
           RA3(I,J,K-1) = RR18
           RA3(I,J,K) = RR17
          END DO
                                                                        
          IF ((RB1(I) + RC1(I)) * RR2 .GT. RB2(I,J)) THEN
           RA2(I,J) = SIN ((RB1(I) + RC1(I)) * RR2)
          ELSE
           RA2(I,J) = COS (RA2(I,J))
          END IF
         END DO
        ELSE
         DO J=10,2,-1
          RR7 = (RB1(I) + RC1(I)) * RR2
          DO K=10,4,-3
           CC8 = CB3(I,J,K) * CC3(I,J,K)
           CC9 = CB3(I,J,K-1) * CC3(I,J,K-1)
           CC5 = CB3(I,J,K-2) * CC3(I,J,K-2)
           CA3(I,J,K) = RR7 + CC8
           CA3(I,J,K-1) = RR7 + CC9
           CA3(I,J,K-2) = RR7 + CC5
           RR20 = RA3(I,J,K) + RC3(I,J,K)
           RR21 = RA3(I,J,K-1) + RC3(I,J,K-1)
           RR22 = RA3(I,J,K-2) + RC3(I,J,K-2)
           DD4 = DA3(I,J,K) / DB3(I,J,K)
           DD5 = DA3(I,J,K-1) / DB3(I,J,K-1)
           DD6 = DA3(I,J,K-2) / DB3(I,J,K-2)
           DA3(I,J,K-2) = DD6
           DA3(I,J,K-1) = DD5
           DA3(I,J,K) = DD4
           RA3(I,J,K-2) = RR22
           RA3(I,J,K-1) = RR21
           RA3(I,J,K) = RR20
          END DO
                                                                        
          IF ((RB1(I) + RC1(I)) * RR2 .GT. RB2(I,J)) THEN
           RA2(I,J) = SIN ((RB1(I) + RC1(I)) * RR2)
          ELSE
           RA2(I,J) = COS (RA2(I,J))
          END IF
         END DO
        END IF
                                                                        
        RC1(I) = RC1(I) * RC1(I)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 



       WRITE (6, *) 'RA3 = ', RA3
       WRITE (6, *) 'CA3 = ', CA3

       STOP 
      END
 
 
