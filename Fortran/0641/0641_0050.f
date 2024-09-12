      DIMENSION A(20), B(20), C(20), D(20,20)
      DIMENSION L(20)
      INTEGER N3, N2, N1
      PARAMETER (N3 = 2, N2 = 10, N1 = 1)
      DATA A/20*1./ 
      DATA B/20*3./ 
      DATA C/20*5./ 
      DATA D/200*-1.D0,200*-3.D0/ 
      INTEGER II3, II2, II1
      REAL RR34, RR33, RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, 
     X  RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14
     X  , RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2
     X  , RR1
      DO I=1,17,4
       L(I) = 21 - I
       L(I+1) = 20 - I
       L(I+2) = 19 - I
       L(I+3) = 18 - I
      END DO

      RR16 = A(13) + B(3)
      RR17 = A(14) + B(4)
      RR18 = A(15) + B(5)
      RR19 = A(16) + B(6)
      RR20 = A(17) + B(7)
      RR21 = A(18) + B(8)
      RR22 = A(19) + B(9)
      RR13 = A(20) + B(10)
      A(5) = RR16 + C(3)
      A(6) = RR17 + C(4)
      A(7) = RR18 + C(5)
      A(8) = RR19 + C(6)
      A(9) = RR20 + C(7)
      A(10) = RR21 + C(8)
      A(11) = RR22 + C(9)
      A(12) = RR13 + C(10)

      RR23 = A(13) + B(3)
      RR24 = A(14) + B(4)
      RR25 = A(15) + B(5)
      RR26 = A(16) + B(6)
      RR27 = A(17) + B(7)
      RR28 = A(18) + B(8)
      RR29 = A(19) + B(9)
      RR14 = A(20) + B(10)
      A(4) = RR23 + C(3)
      A(5) = RR24 + C(4)
      A(6) = RR25 + C(5)
      A(7) = RR26 + C(6)
      A(8) = RR27 + C(7)
      A(9) = RR28 + C(8)
      A(10) = RR29 + C(9)
      A(11) = RR14 + C(10)

      DO I=1,3
       II1 = L(I)
       II2 = I * 2
       DO J=2,8,3
        RR30 = D(J+II2,II1) * A(J)
        RR31 = D(J+II2+1,II1) * A(J+1)
        RR15 = D(J+II2+2,II1) * A(J+2)
        RR32 = B(J+II2) + RR30
        RR33 = B(J+II2+1) + RR31
        RR34 = B(J+II2+2) + RR15
        B(J+II2+2) = RR34
        B(J+II2+1) = RR33
        B(J+II2) = RR32
       END DO
       DO J=2,8,3
        D(J+I,I) = -A(J)
        D(J+I+1,I) = -A(J+1)
        D(J+I+2,I) = -A(J+2)
       END DO
      END DO

      DO I=2,5
       II3 = I * 2
       D(II3,3) = D(I,4) + A(I+3)
       D(II3,4) = D(I,5) + A(I+4)
       D(II3,5) = D(I,6) + A(I+5)
       D(II3,6) = D(I,7) + A(I+6)
       D(II3,7) = D(I,8) + A(I+7)
       D(II3,8) = D(I,9) + A(I+8)
       D(II3,9) = D(I,10) + A(I+9)
       D(II3,10) = D(I,11) + A(I+10)
      END DO
      DO J=3,7,4
       RR1 = B(J)
       RR2 = C(11-J)
       RR4 = B(J+1)
       RR5 = C(10-J)
       RR7 = B(J+2)
       RR8 = C(9-J)
       RR10 = B(J+3)
       RR11 = C(8-J)

       RR3 = RR2 - RR1
       RR6 = RR5 - RR4
       RR9 = RR8 - RR7
       RR12 = RR11 - RR10
       C(20-J) = RR3
       C(19-J) = RR6
       C(18-J) = RR9
       C(17-J) = RR12
      END DO

      DO I=20,13,-4
       C(I-1) = C(I-2) + A(I)
       C(I-2) = C(I-3) + A(I-1)
       C(I-3) = C(I-4) + A(I-2)
       C(I-4) = C(I-5) + A(I-3)
      END DO
      DO I=12,10,-1
       C(I-1) = C(I-2) + A(I)
      END DO
      WRITE (6, *) ' A = ', A
      WRITE (6, *) ' B = ', B
      WRITE (6, *) ' C = ', C
      WRITE (6, *) ' D = ', D
      STOP 
      END
