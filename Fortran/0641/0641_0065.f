      REAL*4 A(20,20), B(20,20), C(20,20), D(20,20)
      INTEGER N
      PARAMETER (N = 19)
      DATA A/400*1./ 
      DATA B/400*2./ 
      DATA C/400*3./ 
      DATA D/400*4./ 
      INTEGER J1, I1
      REAL RR1

      DO I1=1,19
       DO J1=3,19
        A(I1,J1) = B(I1,J1) + C(I1,J1)
        D(I1,J1) = B(I1,J1) * 2. - A(I1,J1-1)
        CALL SUB1 (D(I1,J1))
       END DO
       DO J1=2,18
        B(1,I1) = B(1,I1) + C(I1,J1)
        C(J1,I1) = C(J1+1,I1+1) + A(J1,I1)
        CALL SUB1 (B(1,I1))
       END DO
       RR1 = B(1,I1)
       DO J1=1,17
        A(J1,I1) = RR1 + D(I1,J1)
        CALL SUB1 (A(1,I1))
        C(J1,I1) = C(J1+1,I1+1) + A(J1,I1+1)
       END DO
      END DO
      I = 20
      WRITE (6, *) ((A(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((B(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((C(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((D(I,J), I=1,10), J=1,10)
      STOP 
      END
    
      SUBROUTINE SUB1 ( X )
       X = 1 + X
       RETURN 
      END
    
      SUBROUTINE SUB2 ( X, Y )
       X = 1. + X
       Y = 1. + Y
       RETURN 
      END
