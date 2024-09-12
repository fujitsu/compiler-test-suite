      PROGRAM MAIN
       REAL*8 A(30,30), B(30,30), C(30,30), D(30,30)
       INTEGER*4 L1(30), L2(30), L3(30)
       INTEGER IT5, IT4, IT3, IT2, IT1
       PARAMETER (IT5 = 10, IT4 = 4, IT3 = 3, IT2 = 2, IT1 = 1)
       DATA A/900*1.D0/ 
       DATA B/900*2.D0/ 
       DATA C/900*3.D0/ 
       DATA D/900*4.D0/ 
       INTEGER II23, II22, II21, II20, II19, II18, II17, II16, II15, 
     X   II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3
     X   , II2, II1
       DOUBLE PRECISION DD2, DD1
       INTEGER L11 (30)
       DO I=1,26,5
        L1(I) = I
        L1(I+1) = I + 1
        L1(I+2) = I + 2
        L1(I+3) = I + 3
        L1(I+4) = I + 4
        L2(I) = 31 - I
        L2(I+1) = 30 - I
        L2(I+2) = 29 - I
        L2(I+3) = 28 - I
        L2(I+4) = 27 - I
        II18 = I - 4
        II19 = I - 3
        II20 = I - 2
        II21 = I - 1
        II22 = I
        II18 = MAX (II18, 1)
        II19 = MAX (II19, 1)
        II20 = MAX (II20, 1)
        II21 = MAX (II21, 1)
        II22 = MAX (II22, 1)
        L3(I+4) = II22
        L3(I+3) = II21
        L3(I+2) = II20
        L3(I+1) = II19
        L3(I) = II18
       END DO

       DO J=1,L1(10)
        II2 = J + 10
        IF (II2 .GT. 0) THEN
         DD1 = D(J+3,J+11) * 2D0
         II5 = (J + 10) / 4
         II4 = II5 * 4 + 2
         DO I=2,J+8,4
          B(J+5,I+2) = DD1
          B(J+5,I+3) = DD1
          B(J+5,I+4) = DD1
          B(J+5,I+5) = DD1
         END DO
         DO I=II4,J+11,1
          B(J+5,I+2) = DD1
         END DO
        END IF
       END DO

       DO J=1,L1(10)
        II7 = (J + 10) / 4
        II6 = II7 * 4 + 2
        DO I=2,J+8,4
         A(J+3,I+2) = B(J+3,I+1) + C(I+2,I+3)
         A(J+3,I+3) = B(J+3,I+2) + C(I+3,I+4)
         A(J+3,I+4) = B(J+3,I+3) + C(I+4,I+5)
         A(J+3,I+5) = B(J+3,I+4) + C(I+5,I+6)
        END DO
        DO I=II6,J+11,1
         A(J+3,I+2) = B(J+3,I+1) + C(I+2,I+3)
        END DO
       END DO

       DO J=1,L1(10)
        II9 = (J + 10) / 4
        II8 = II9 * 4 + 2
        DO I=2,J+8,4
         C(I+2,I+2) = 2D0 + D(J+3,I+2)
         C(I+3,I+3) = 2D0 + D(J+3,I+3)
         C(I+4,I+4) = 2D0 + D(J+3,I+4)
         C(I+5,I+5) = 2D0 + D(J+3,I+5)
        END DO
        DO I=II8,J+11,1
         C(I+2,I+2) = 2D0 + D(J+3,I+2)
        END DO
       END DO

       II1 = L1(10)
       DO J=1,II1
        II11 = (J + 10) / 4
        II10 = II11 * 4 + 2
        DO I=2,J+8,4
         A(J+11,I+2) = B(J+11,I+2) + C(I+1,I+3)
         A(J+11,I+3) = B(J+11,I+3) + C(I+2,I+4)
         A(J+11,I+4) = B(J+11,I+4) + C(I+3,I+5)
         A(J+11,I+5) = B(J+11,I+5) + C(I+4,I+6)
        END DO
        DO I=II10,J+11,1
         A(J+11,I+2) = B(J+11,I+2) + C(I+1,I+3)
        END DO
       END DO

       DO J=1,II1
        II3 = J + 10
        IF (II3 .GT. 0) THEN
         DD2 = D(J+3,J+11) * 2D0
         II13 = (J + 10) / 4
         II12 = II13 * 4 + 2
         DO I=2,J+8,4
          B(J+5,I+2) = DD2
          B(J+5,I+3) = DD2
          B(J+5,I+4) = DD2
          B(J+5,I+5) = DD2
         END DO
         DO I=II12,J+11,1
          B(J+5,I+2) = DD2
         END DO
        END IF
       END DO

       DO J=1,II1
        II15 = (J + 10) / 4
        II14 = II15 * 4 + 2
        DO I=2,J+8,4
         C(I+2,I+2) = 2D0 + D(J+3,I+2)
         C(I+3,I+3) = 2D0 + D(J+3,I+3)
         C(I+4,I+4) = 2D0 + D(J+3,I+4)
         C(I+5,I+5) = 2D0 + D(J+3,I+5)
        END DO
        DO I=II14,J+11,1
         C(I+2,I+2) = 2D0 + D(J+3,I+2)
        END DO
       END DO
C$OMP PARALLEL IF (II1 .GT. 20) SHARED (II1,L2,L3,L1) PRIVATE (II17,II16
C$OMP& ,J,I,L11,II23)
       DO II23=1,30
        L11(II23) = 0
       END DO

C$OMP DO 
       DO J=1,II1
        II17 = (J + 10) / 4
        II16 = II17 * 4 + 2
        DO I=2,J+8,4
         L11(L2(J)-2) = L11(L2(J)-2) + (L3(J) + 1) * I
         L11(L2(J)-2) = L11(L2(J)-2) + (L3(J) + 1) * (I + 1)
         L11(L2(J)-2) = L11(L2(J)-2) + (L3(J) + 1) * (I + 2)
         L11(L2(J)-2) = L11(L2(J)-2) + (L3(J) + 1) * (I + 3)
        END DO
        DO I=II16,J+11,1
         L11(L2(J)-2) = L11(L2(J)-2) + (L3(J) + 1) * I
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II24)
       DO II23=1,30
        L1(II23) = L1(II23) + L11(II23)
       END DO
C$OMP END CRITICAL (II24)
C$OMP END PARALLEL 

       WRITE (6, *) A
       WRITE (6, *) B
       WRITE (6, *) C
       STOP 
      END
