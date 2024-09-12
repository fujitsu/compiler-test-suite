      REAL*8 A(100), B(100), C(100), D(100)
      INTEGER I1
      D(100) = 1D0
      DO I1=1,92,10
       A(I1) = 1.5
       A(I1+2) = 1.5
       A(I1+4) = 1.5
       A(I1+6) = 1.5
       A(I1+8) = 1.5
       A(I1+1) = 2.5
       A(I1+3) = 2.5
       A(I1+5) = 2.5
       A(I1+7) = 2.5
       A(I1+9) = 2.5
       B(I1) = -1D0
       B(I1+2) = -1D0
       B(I1+4) = -1D0
       B(I1+6) = -1D0
       B(I1+8) = -1D0
       B(I1+1) = 2D0
       B(I1+3) = 2D0
       B(I1+5) = 2D0
       B(I1+7) = 2D0
       B(I1+9) = 2D0
       C(I1) = 0D0
       C(I1+2) = 0D0
       C(I1+4) = 0D0
       C(I1+6) = 0D0
       C(I1+8) = 0D0
       C(I1+1) = -10D0
       C(I1+3) = -10D0
       C(I1+5) = -10D0
       C(I1+7) = -10D0
       C(I1+9) = -10D0
      END DO
      DO I1=1,97,3
       D(I1) = A(I1) * B(I1)
       A(I1+1) = D(I1) / (1 + C(I1))
       D(I1+1) = A(I1+1) * B(I1+1)
       A(I1+2) = D(I1+1) / (1 + C(I1+1))
       D(I1+2) = A(I1+2) * B(I1+2)
       A(I1+3) = D(I1+2) / (1 + C(I1+2))
      END DO
      WRITE (6, *) 100
      AMX = 0.
      DO I1=1,99
       IF (REAL (AMX, KIND = 8) .LT. D(I1) + B(I1+1)) THEN
        AMX = D(I1) + B(I1+1)
        J = I1
       END IF
       C(I1+1) = C(I1) * D(I1) * A(I1)
      END DO
      WRITE (6, *) AMX, J
      DO I1=1,99
       IF (REAL (AMX, KIND = 8) .LT. D(I1) + B(I1+1)) THEN
        AMX = D(I1) + B(I1+1)
       END IF
       C(I1+1) = C(I1) * D(I1) * A(I1)
      END DO
      WRITE (6, *) AMX
      DO I1=1,97,3
       D(I1) = A(I1) * (B(I1) - 1)
       A(I1+1) = (D(I1) - 1 + I1) / (1 + C(I1))
       D(100) = D(100) + A(10)
       D(I1+1) = A(I1+1) * (B(I1+1) - 1)
       A(I1+2) = (D(I1+1) + I1) / (1 + C(I1+1))
       D(100) = D(100) + A(10)
       D(I1+2) = A(I1+2) * (B(I1+2) - 1)
       A(I1+3) = (1 + D(I1+2) + I1) / (1 + C(I1+2))
       D(100) = D(100) + A(10)
      END DO
      WRITE (6, *) 100
      WRITE (6, *) A, B, C, D
      END
