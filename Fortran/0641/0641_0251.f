      PARAMETER (N1 = 10, N2 = 10, N3 = 1)
      REAL A(1:10,1:10,10), B(1:10,1:10,10)
      DATA A/1000*1.0/ 
      DATA B/1000*2.0/ 
      REAL RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X  RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
      DO J=1,7,4
       DO I=1,6,5
        RR3 = B(I,J,1) * 2.
        RR4 = B(I+1,J,1) * 2.
        RR5 = B(I+2,J,1) * 2.
        RR6 = B(I+3,J,1) * 2.
        RR1 = B(I+4,J,1) * 2.
        RR11 = A(1,1,I) + RR3
        RR12 = A(1,1,I+1) + RR4
        RR13 = A(1,1,I+2) + RR5
        RR14 = A(1,1,I+3) + RR6
        RR15 = A(1,1,I+4) + RR1
        RR3 = B(I,J+1,1) * 2.
        RR4 = B(I+1,J+1,1) * 2.
        RR5 = B(I+2,J+1,1) * 2.
        RR6 = B(I+3,J+1,1) * 2.
        RR1 = B(I+4,J+1,1) * 2.
        RR11 = RR11 + RR3
        RR12 = RR12 + RR4
        RR13 = RR13 + RR5
        RR14 = RR14 + RR6
        RR15 = RR15 + RR1
        RR3 = B(I,J+2,1) * 2.
        RR4 = B(I+1,J+2,1) * 2.
        RR5 = B(I+2,J+2,1) * 2.
        RR6 = B(I+3,J+2,1) * 2.
        RR1 = B(I+4,J+2,1) * 2.
        RR11 = RR11 + RR3
        RR12 = RR12 + RR4
        RR13 = RR13 + RR5
        RR14 = RR14 + RR6
        RR15 = RR15 + RR1
        RR3 = B(I,J+3,1) * 2.
        RR4 = B(I+1,J+3,1) * 2.
        RR5 = B(I+2,J+3,1) * 2.
        RR6 = B(I+3,J+3,1) * 2.
        RR1 = B(I+4,J+3,1) * 2.
        RR11 = RR11 + RR3
        RR12 = RR12 + RR4
        RR13 = RR13 + RR5
        RR14 = RR14 + RR6
        RR15 = RR15 + RR1
        A(1,1,I+4) = RR15
        A(1,1,I+3) = RR14
        A(1,1,I+2) = RR13
        A(1,1,I+1) = RR12
        A(1,1,I) = RR11
       END DO
      END DO
      DO J=9,10,1
       DO I=1,6,5
        RR7 = B(I,J,1) * 2.
        RR8 = B(I+1,J,1) * 2.
        RR9 = B(I+2,J,1) * 2.
        RR10 = B(I+3,J,1) * 2.
        RR2 = B(I+4,J,1) * 2.
        RR16 = A(1,1,I) + RR7
        RR17 = A(1,1,I+1) + RR8
        RR18 = A(1,1,I+2) + RR9
        RR19 = A(1,1,I+3) + RR10
        RR20 = A(1,1,I+4) + RR2
        A(1,1,I+4) = RR20
        A(1,1,I+3) = RR19
        A(1,1,I+2) = RR18
        A(1,1,I+1) = RR17
        A(1,1,I) = RR16
       END DO
      END DO
      PRINT *, A
      END
