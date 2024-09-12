      PROGRAM MAIN
       REAL*8 D10(10), D11(10), D12(10), D13(10), D14(10)
       DATA D11/10*0/ 
       REAL*8 D20(10,10), D21(10,10), D22(10,10)
       REAL*8 D30(10,10,10), D31(10,10,10), D32(10,10,10)
       DATA D31/1000*0/ 
       DATA D30/1000*0./ 
       REAL*8 D40(10,10,10,10)
       INTEGER M
       PARAMETER (M = 0)
       INTEGER II6, II5, II4, II3, L1, K1, J1, I1, II2, II1
       DOUBLE PRECISION DD26, DD25, DD24, DD23, DD22, DD21, DD20, DD19, 
     X   DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8
     X   , DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO II2=1,7,4
        DO II1=1,6,5
         D20(II1,II2) = 0D0
         D20(II1+1,II2) = 0D0
         D20(II1+2,II2) = 0D0
         D20(II1+3,II2) = 0D0
         D20(II1+4,II2) = 0D0
         D20(II1,II2+1) = 0D0
         D20(II1+1,II2+1) = 0D0
         D20(II1+2,II2+1) = 0D0
         D20(II1+3,II2+1) = 0D0
         D20(II1+4,II2+1) = 0D0
         D20(II1,II2+2) = 0D0
         D20(II1+1,II2+2) = 0D0
         D20(II1+2,II2+2) = 0D0
         D20(II1+3,II2+2) = 0D0
         D20(II1+4,II2+2) = 0D0
         D20(II1,II2+3) = 0D0
         D20(II1+1,II2+3) = 0D0
         D20(II1+2,II2+3) = 0D0
         D20(II1+3,II2+3) = 0D0
         D20(II1+4,II2+3) = 0D0
        END DO
       END DO
       DO II2=9,10,1
        DO II1=1,6,5
         D20(II1,II2) = 0D0
         D20(II1+1,II2) = 0D0
         D20(II1+2,II2) = 0D0
         D20(II1+3,II2) = 0D0
         D20(II1+4,II2) = 0D0
        END DO
       END DO

       DO I1=1,6,5
        DD6 = -I1
        DD7 = -1 - I1
        DD8 = -2 - I1
        DD9 = -3 - I1
        DD10 = -4 - I1
        DO J1=1,10
         DO K1=1,6,5
          DD1 = I1
          DD2 = I1 + 1
          DD3 = I1 + 2
          DD4 = I1 + 3
          DD5 = I1 + 4
          DD1 = I1
          DD2 = I1 + 1
          DD3 = I1 + 2
          DD4 = I1 + 3
          DD5 = I1 + 4
          DD1 = I1
          DD2 = I1 + 1
          DD3 = I1 + 2
          DD4 = I1 + 3
          DD5 = I1 + 4
          DD1 = I1
          DD2 = I1 + 1
          DD3 = I1 + 2
          DD4 = I1 + 3
          DD5 = I1 + 4
          DD1 = I1
          DD2 = I1 + 1
          DD3 = I1 + 2
          DD4 = I1 + 3
          DD5 = I1 + 4
         END DO
        END DO
        D12(I1+4) = DD10
        D12(I1+3) = DD9
        D12(I1+2) = DD8
        D12(I1+1) = DD7
        D12(I1) = DD6
        D10(I1+4) = DD5
        D10(I1+3) = DD4
        D10(I1+2) = DD3
        D10(I1+1) = DD2
        D10(I1) = DD1
       END DO
C$OMP PARALLEL SHARED (D21,D22,D32,D40) PRIVATE (II3,II5,J1,K1,I1,L1)
C$OMP DO 
       DO J1=1,10
        DO K1=1,10

         DO I1=1,7,4
          D21(I1,J1) = I1 * J1
          D21(I1+1,J1) = (I1 + 1) * J1
          D21(I1+2,J1) = (I1 + 2) * J1
          D21(I1+3,J1) = (I1 + 3) * J1
          D22(I1,J1) = I1 * J1 * 2
          D22(I1+1,J1) = (I1 + 1) * J1 * 2
          D22(I1+2,J1) = (I1 + 2) * J1 * 2
          D22(I1+3,J1) = (I1 + 3) * J1 * 2
         END DO
         D21(9,J1) = J1 * 9
         D21(10,J1) = J1 * 10
         II5 = J1 * 9
         II3 = J1 * 10
         D22(9,J1) = II5 * 2
         D22(10,J1) = II3 * 2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=1,10
        DO J1=1,7,4

         DO I1=1,6,5
          D32(I1,J1,K1) = K1 + I1 + J1
          D32(I1+1,J1,K1) = K1 + I1 + J1 + 1
          D32(I1+2,J1,K1) = K1 + I1 + J1 + 2
          D32(I1+3,J1,K1) = K1 + I1 + J1 + 3
          D32(I1+4,J1,K1) = K1 + I1 + J1 + 4
          D32(I1,J1+1,K1) = K1 + I1 + J1 + 1
          D32(I1+1,J1+1,K1) = K1 + I1 + J1 + 2
          D32(I1+2,J1+1,K1) = K1 + I1 + J1 + 3
          D32(I1+3,J1+1,K1) = K1 + I1 + J1 + 4
          D32(I1+4,J1+1,K1) = K1 + I1 + J1 + 5
          D32(I1,J1+2,K1) = K1 + I1 + J1 + 2
          D32(I1+1,J1+2,K1) = K1 + I1 + J1 + 3
          D32(I1+2,J1+2,K1) = K1 + I1 + J1 + 4
          D32(I1+3,J1+2,K1) = K1 + I1 + J1 + 5
          D32(I1+4,J1+2,K1) = K1 + I1 + J1 + 6
          D32(I1,J1+3,K1) = K1 + I1 + J1 + 3
          D32(I1+1,J1+3,K1) = K1 + I1 + J1 + 4
          D32(I1+2,J1+3,K1) = K1 + I1 + J1 + 5
          D32(I1+3,J1+3,K1) = K1 + I1 + J1 + 6
          D32(I1+4,J1+3,K1) = K1 + I1 + J1 + 7
         END DO
        END DO
        DO J1=9,10,1

         DO I1=1,6,5
          D32(I1,J1,K1) = K1 + I1 + J1
          D32(I1+1,J1,K1) = K1 + I1 + J1 + 1
          D32(I1+2,J1,K1) = K1 + I1 + J1 + 2
          D32(I1+3,J1,K1) = K1 + I1 + J1 + 3
          D32(I1+4,J1,K1) = K1 + I1 + J1 + 4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I1=1,10
        DO L1=1,7,4
         DO K1=1,10
          DO J1=1,6,5
           D40(J1,L1,K1,I1) = 0D0
           D40(J1+1,L1,K1,I1) = 0D0
           D40(J1+2,L1,K1,I1) = 0D0
           D40(J1+3,L1,K1,I1) = 0D0
           D40(J1+4,L1,K1,I1) = 0D0
           D40(J1,L1+1,K1,I1) = 0D0
           D40(J1+1,L1+1,K1,I1) = 0D0
           D40(J1+2,L1+1,K1,I1) = 0D0
           D40(J1+3,L1+1,K1,I1) = 0D0
           D40(J1+4,L1+1,K1,I1) = 0D0
           D40(J1,L1+2,K1,I1) = 0D0
           D40(J1+1,L1+2,K1,I1) = 0D0
           D40(J1+2,L1+2,K1,I1) = 0D0
           D40(J1+3,L1+2,K1,I1) = 0D0
           D40(J1+4,L1+2,K1,I1) = 0D0
           D40(J1,L1+3,K1,I1) = 0D0
           D40(J1+1,L1+3,K1,I1) = 0D0
           D40(J1+2,L1+3,K1,I1) = 0D0
           D40(J1+3,L1+3,K1,I1) = 0D0
           D40(J1+4,L1+3,K1,I1) = 0D0
          END DO
         END DO
        END DO
        DO L1=9,10,1
         DO K1=1,10
          DO J1=1,6,5
           D40(J1,L1,K1,I1) = 0D0
           D40(J1+1,L1,K1,I1) = 0D0
           D40(J1+2,L1,K1,I1) = 0D0
           D40(J1+3,L1,K1,I1) = 0D0
           D40(J1+4,L1,K1,I1) = 0D0
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 ----- '
       S1 = 0.
       S2 = 0.
       DO I1=1,10
        D11(I1) = D12(I1) * D10(I1)
        DO K1=1,10
         DD11 = D11(K1) * D12(K1)
         D30(I1,1,K1) = DD11
         D30(I1,2,K1) = DD11
         DO L1=1,10
          II6 = I1 + K1 + L1 + 1
          II4 = I1 + K1 + L1 + 2
          D40(I1,1,K1,L1) = II6 + D30(I1,1,L1)
          D40(I1,2,K1,L1) = II4 + D30(I1,2,L1)
         END DO
        END DO
       END DO
       DO I1=1,6,5
        S1 = S1 + D10(I1)
        DD17 = D11(I1) + D10(I1)
        D14(I1) = I1 - DD17
        S1 = S1 + D10(I1+1)
        DD18 = D11(I1+1) + D10(I1+1)
        D14(I1+1) = 1 + I1 - DD18
        S1 = S1 + D10(I1+2)
        DD19 = D11(I1+2) + D10(I1+2)
        D14(I1+2) = 2 + I1 - DD19
        S1 = S1 + D10(I1+3)
        DD20 = D11(I1+3) + D10(I1+3)
        D14(I1+3) = 3 + I1 - DD20
        S1 = S1 + D10(I1+4)
        DD21 = D11(I1+4) + D10(I1+4)
        D14(I1+4) = 4 + I1 - DD21
        D13(I1+4) = DD21
        D13(I1+3) = DD20
        D13(I1+2) = DD19
        D13(I1+1) = DD18
        D13(I1) = DD17
       END DO
       DO I1=1,10
        DO J1=1,2
         DO K1=1,6,5
          S2 = S2 + D40(I1,J1,K1,2)
          S2 = S2 + D40(I1,J1,K1+1,2)
          S2 = S2 + D40(I1,J1,K1+2,2)
          S2 = S2 + D40(I1,J1,K1+3,2)
          S2 = S2 + D40(I1,J1,K1+4,2)
         END DO
         D20(I1,J1) = D21(I1,J1) + S2
        END DO
       END DO
       DO K1=1,10
        DO I1=1,6,5
         D31(I1,1,K1) = D32(I1,1,K1)
         D31(I1+1,1,K1) = D32(I1+1,1,K1)
         D31(I1+2,1,K1) = D32(I1+2,1,K1)
         D31(I1+3,1,K1) = D32(I1+3,1,K1)
         D31(I1+4,1,K1) = D32(I1+4,1,K1)
         D31(I1,2,K1) = D32(I1,2,K1)
         D31(I1+1,2,K1) = D32(I1+1,2,K1)
         D31(I1+2,2,K1) = D32(I1+2,2,K1)
         D31(I1+3,2,K1) = D32(I1+3,2,K1)
         D31(I1+4,2,K1) = D32(I1+4,2,K1)
        END DO
       END DO
       I = 11
       WRITE (6, *) ' S1 = ', S1
       WRITE (6, *) ' D11 = ', D11
       WRITE (6, *) ' D30 = ', (((D30(I,J,K), I=1,2), J=2,3), K=3,4)
       WRITE (6, *) ' D40 = ', ((((D40(I,J,K,L), I=1,2), J=2,3), K=3,4)
     X   , L=4,5)
       WRITE (6, *) ' S2 = ', S2
       WRITE (6, *) ' D31 = ', (((D31(I,J,K), I=2,3), J=4,5), K=6,7)
       WRITE (6, *) ' D20 = ', ((D20(I,J), I=1,3), J=5,7)
       WRITE (6, *) ' D13 = ', D13
       WRITE (6, *) ' D14 = ', D14

       WRITE (6, *) '----- TEST NO.2 ----- '
       S2 = 0.
       DO I1=1,10
        D11(I1) = D12(I1) * D10(I1)
        DO J1=1,10
         D20(I1,J1) = D11(J1)
         DO K1=1,10
          D30(I1,J1,K1) = D11(K1) * D12(K1)
          DO L1=1,6,5
           DD13 = I1 + D31(L1,I1,J1)
           DD14 = I1 + D31(L1+1,I1,J1)
           DD15 = I1 + D31(L1+2,I1,J1)
           DD16 = I1 + D31(L1+3,I1,J1)
           DD12 = I1 + D31(L1+4,I1,J1)
           D40(I1,J1,K1,L1) = DD13 + D30(I1,J1,L1)
           D40(I1,J1,K1,L1+1) = DD14 + D30(I1,J1,L1+1)
           D40(I1,J1,K1,L1+2) = DD15 + D30(I1,J1,L1+2)
           D40(I1,J1,K1,L1+3) = DD16 + D30(I1,J1,L1+3)
           D40(I1,J1,K1,L1+4) = DD12 + D30(I1,J1,L1+4)
          END DO
          D31(I1,J1,K1) = D32(I1,J1,K1) + D14(K1)
         END DO
        END DO
        D14(I1) = -(D11(I1) + I1)
       END DO
       DO J1=1,10
        DO I1=1,6,5
         DD22 = D20(I1,J1) + D22(J1,I1)
         S2 = S2 + DD22
         DD23 = D20(I1+1,J1) + D22(J1,I1+1)
         S2 = S2 + DD23
         DD24 = D20(I1+2,J1) + D22(J1,I1+2)
         S2 = S2 + DD24
         DD25 = D20(I1+3,J1) + D22(J1,I1+3)
         S2 = S2 + DD25
         DD26 = D20(I1+4,J1) + D22(J1,I1+4)
         S2 = S2 + DD26
         D21(I1+4,J1) = DD26
         D21(I1+3,J1) = DD25
         D21(I1+2,J1) = DD24
         D21(I1+1,J1) = DD23
         D21(I1,J1) = DD22
        END DO
       END DO
       I = 11
       WRITE (6, *) ' S2  = ', S2
       WRITE (6, *) ' D11 = ', D11
       WRITE (6, *) ' D20 = ', ((D20(I,J), I=1,3), J=5,7)
       WRITE (6, *) ' D30 = ', (((D30(I,J,K), I=1,2), J=2,3), K=3,4)
       WRITE (6, *) ' D40 = ', ((((D40(I,J,K,L), I=1,2), J=2,3), K=3,4)
     X   , L=4,5)
       WRITE (6, *) ' D31 = ', (((D31(I,J,K), I=1,2), J=2,3), K=3,4)
       WRITE (6, *) ' D21 = ', ((D21(I,J), I=2,4), J=6,8)
       WRITE (6, *) ' D14 = ', D14

       STOP 
      END
