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
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)
       COMMON /CV5284K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR12, LB3, LA3
       INTEGER II19, II18, II17, II16, II15, II14, II13, II12, II11, 
     X   II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3
       LOGICAL LL7, LL6, LL5, LL4, LL3, LL2, LL1
       REAL RA210 (L1), RA29 (L1), RA28 (L1), RA27 (L1), RA26 (L1), RA25
     X    (L1), RA24 (L1), RA23 (L1), RA22 (L1), RA21 (L1), RR12 (86)
                                                                        
                                                       
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
                                                                        
C$OMP PARALLEL SHARED (RA2,RB2,RC2,CA2,CB2,LA3) PRIVATE (II1,RR3,RR4,RR7
C$OMP& ,II5,II6,II7,II8,II9,RR8,RR9,RR10,RR11,J,I,LL3,LL4,LL5,LL6,II2,
C$OMP& II3,II4,LL7,K)
C$OMP DO 
       DO J=1,10
        II1 = J * 3
        RR3 = FLOAT (II1)
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
         RC2(I,J) = I + II1
         RC2(I+1,J) = I + II1 + 1
         RC2(I+2,J) = I + II1 + 2
         RC2(I+3,J) = I + II1 + 3
         RC2(I+4,J) = I + II1 + 4
         II6 = I + 2
         II7 = I + 3
         II8 = I + 4
         II9 = I + 5
         II5 = I + 6
         RR8 = FLOAT (II6)
         RR9 = FLOAT (II7)
         RR10 = FLOAT (II8)
         RR11 = FLOAT (II9)
         RR7 = FLOAT (II5)
         CA2(I,J) = CMPLX (RR8, RR3)
         CA2(I+1,J) = CMPLX (RR9, RR3)
         CA2(I+2,J) = CMPLX (RR10, RR3)
         CA2(I+3,J) = CMPLX (RR11, RR3)
         CA2(I+4,J) = CMPLX (RR7, RR3)
         II6 = I - 2
         II7 = I - 1
         II8 = I
         II9 = I + 1
         II5 = I + 2
         RR8 = FLOAT (II6)
         RR9 = FLOAT (II7)
         RR10 = FLOAT (II8)
         RR11 = FLOAT (II9)
         RR7 = FLOAT (II5)
         CB2(I,J) = CMPLX (RR8, RR4)
         CB2(I+1,J) = CMPLX (RR9, RR4)
         CB2(I+2,J) = CMPLX (RR10, RR4)
         CB2(I+3,J) = CMPLX (RR11, RR4)
         CB2(I+4,J) = CMPLX (RR7, RR4)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
                                                                        
C$OMP DO 
       DO K=1,10
        II2 = K - 1
        II3 = K - 2
        II4 = K - 3
                                                                        
        DO J=1,7,4
         LL3 = J .GT. K
         LL4 = J .GT. II2
         LL5 = J .GT. II3
         LL6 = J .GT. II4
                                                                        
                                                       
         DO I=1,6,5
          LA3(I,J,K) = LL3
          LA3(I+1,J,K) = LL3
          LA3(I+2,J,K) = LL3
          LA3(I+3,J,K) = LL3
          LA3(I+4,J,K) = LL3
          LA3(I,J+1,K) = LL4
          LA3(I+1,J+1,K) = LL4
          LA3(I+2,J+1,K) = LL4
          LA3(I+3,J+1,K) = LL4
          LA3(I+4,J+1,K) = LL4
          LA3(I,J+2,K) = LL5
          LA3(I+1,J+2,K) = LL5
          LA3(I+2,J+2,K) = LL5
          LA3(I+3,J+2,K) = LL5
          LA3(I+4,J+2,K) = LL5
          LA3(I,J+3,K) = LL6
          LA3(I+1,J+3,K) = LL6
          LA3(I+2,J+3,K) = LL6
          LA3(I+3,J+3,K) = LL6
          LA3(I+4,J+3,K) = LL6
         END DO
        END DO
        DO J=9,10,1
         LL7 = J .GT. K
                                                                        
                                                       
         DO I=1,6,5
          LA3(I,J,K) = LL7
          LA3(I+1,J,K) = LL7
          LA3(I+2,J,K) = LL7
          LA3(I+3,J,K) = LL7
          LA3(I+4,J,K) = LL7
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
       DO I=1,10
        G = 0.
        S = RA1(I)
        RA1(I) = (RB1(I) + RC1(I)) * RR1
        LL1 = RA1(I) .LT. S
        IF (LL1) THEN
         RR5 = RA1(I)
                                                                        
         DO J=1,6,5
          G = G + RB1(J) * RC1(J)
          CA2(I,J) = CB2(I,J) * RR5
          G = G + RB1(J+1) * RC1(J+1)
          CA2(I,J+1) = CB2(I,J+1) * RR5
          G = G + RB1(J+2) * RC1(J+2)
          CA2(I,J+2) = CB2(I,J+2) * RR5
          G = G + RB1(J+3) * RC1(J+3)
          CA2(I,J+3) = CB2(I,J+3) * RR5
          G = G + RB1(J+4) * RC1(J+4)
          CA2(I,J+4) = CB2(I,J+4) * RR5
         END DO
        END IF
        IF (.NOT.LL1) THEN
         DO J=1,6,5
          G = G + RB1(J) * RC1(J)
          CA2(I,J) = CB2(I,J) * S
          G = G + RB1(J+1) * RC1(J+1)
          CA2(I,J+1) = CB2(I,J+1) * S
          G = G + RB1(J+2) * RC1(J+2)
          CA2(I,J+2) = CB2(I,J+2) * S
          G = G + RB1(J+3) * RC1(J+3)
          CA2(I,J+3) = CB2(I,J+3) * S
          G = G + RB1(J+4) * RC1(J+4)
          CA2(I,J+4) = CB2(I,J+4) * S
         END DO
        END IF
       END DO
                                                                        
       WRITE (6, *) '   G =', G
       WRITE (6, *) ' CA2 =', CA2
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
       G = 0.
                                                                        
       DO I=1,10
        G = G + RB1(I) * RC1(I)
        S = RA1(I)
        RA1(I) = (RB1(I) + RC1(I)) * RR2
        LL2 = RA1(I) .LT. S
        IF (LL2) THEN
         RR6 = RA1(I)
                                                                        
         DO J=1,6,5
          CA2(I,J) = CB2(I,J) * RR6
          CA2(I,J+1) = CB2(I,J+1) * RR6
          CA2(I,J+2) = CB2(I,J+2) * RR6
          CA2(I,J+3) = CB2(I,J+3) * RR6
          CA2(I,J+4) = CB2(I,J+4) * RR6
         END DO
        END IF
        IF (.NOT.LL2) THEN
         DO J=1,6,5
          CA2(I,J) = CB2(I,J) * S
          CA2(I,J+1) = CB2(I,J+1) * S
          CA2(I,J+2) = CB2(I,J+2) * S
          CA2(I,J+3) = CB2(I,J+3) * S
          CA2(I,J+4) = CB2(I,J+4) * S
         END DO
        END IF
       END DO
                                                                        
       WRITE (6, *) '   G =', G
       WRITE (6, *) ' CA2 =', CA2

       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
                                                                        
       DO I=1,10
        V11 = 0.
                                                                        
        DO J=1,6,5
         V11 = V11 + RB2(1,J) * RC2(J,1)
         V11 = V11 + RB2(1,J+1) * RC2(J+1,1)
         V11 = V11 + RB2(1,J+2) * RC2(J+2,1)
         V11 = V11 + RB2(1,J+3) * RC2(J+3,1)
         V11 = V11 + RB2(1,J+4) * RC2(J+4,1)
        END DO
       END DO
                                                                        
C$OMP PARALLEL SHARED (RB2,RC2,RA2) PRIVATE (K,J,I,RA21,II10,RA22,II11,
C$OMP& RA23,II12,RA24,II13,RA25,II14)
C$OMP DO 
       DO K=1,10
        DO II10=1,10
         RA21(II10) = 0.
        END DO
        DO II11=1,10
         RA22(II11) = 0.
        END DO
        DO II12=1,10
         RA23(II12) = 0.
        END DO
        DO II13=1,10
         RA24(II13) = 0.
        END DO
        DO II14=1,10
         RA25(II14) = 0.
        END DO
                                                                        
        DO J=1,10
                                                                        
                                                                        
         DO I=1,6,5
          RA21(I) = RA21(I) + RB2(I,J) * RC2(J,K)
          RA22(I+1) = RA22(I+1) + RB2(I+1,J) * RC2(J,K)
          RA23(I+2) = RA23(I+2) + RB2(I+2,J) * RC2(J,K)
          RA24(I+3) = RA24(I+3) + RB2(I+3,J) * RC2(J,K)
          RA25(I+4) = RA25(I+4) + RB2(I+4,J) * RC2(J,K)
         END DO
        END DO
        DO II14=1,10
         RA2(II14,K) = RA2(II14,K) + RA25(II14)
        END DO
        DO II13=1,10
         RA2(II13,K) = RA2(II13,K) + RA24(II13)
        END DO
        DO II12=1,10
         RA2(II12,K) = RA2(II12,K) + RA23(II12)
        END DO
        DO II11=1,10
         RA2(II11,K) = RA2(II11,K) + RA22(II11)
        END DO
        DO II10=1,10
         RA2(II10,K) = RA2(II10,K) + RA21(II10)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       LA3(1,1,1) = RA2(1,1) .EQ. V11
                                                                        
       WRITE (6, *) ' RA2=', RA2
       WRITE (6, *) ' LA3(1,1,1)=', LA3(1,1,1)

       WRITE (6, *) '----- TEST NO.4 -----'

C$OMP PARALLEL SHARED (RB2,RC2,RA2) PRIVATE (K,J,I,RA26,II15,RA27,II16,
C$OMP& RA28,II17,RA29,II18,RA210,II19)
C$OMP DO 
       DO K=1,10
        DO II15=1,10
         RA26(II15) = 0.
        END DO
        DO II16=1,10
         RA27(II16) = 0.
        END DO
        DO II17=1,10
         RA28(II17) = 0.
        END DO
        DO II18=1,10
         RA29(II18) = 0.
        END DO
        DO II19=1,10
         RA210(II19) = 0.
        END DO
        DO J=1,10
                                                                        
                                                                        
         DO I=1,6,5
          RA26(I) = RA26(I) + RB2(I,J) * RC2(J,K)
          RA27(I+1) = RA27(I+1) + RB2(I+1,J) * RC2(J,K)
          RA28(I+2) = RA28(I+2) + RB2(I+2,J) * RC2(J,K)
          RA29(I+3) = RA29(I+3) + RB2(I+3,J) * RC2(J,K)
          RA210(I+4) = RA210(I+4) + RB2(I+4,J) * RC2(J,K)
         END DO
        END DO
        DO II19=1,10
         RA2(II19,K) = RA2(II19,K) + RA210(II19)
        END DO
        DO II18=1,10
         RA2(II18,K) = RA2(II18,K) + RA29(II18)
        END DO
        DO II17=1,10
         RA2(II17,K) = RA2(II17,K) + RA28(II17)
        END DO
        DO II16=1,10
         RA2(II16,K) = RA2(II16,K) + RA27(II16)
        END DO
        DO II15=1,10
         RA2(II15,K) = RA2(II15,K) + RA26(II15)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) ' RA2=', RA2
                                                                        
       STOP 
      END
 
 
 
 
 
 
