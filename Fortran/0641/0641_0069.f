      REAL*4 A1(20,20), B1(20,20), C1(20,20)
      REAL*4 A2(20,20), B2(20,20), C2(20,20)
      EQUIVALENCE (A1(1,1), A2(1,1)), (C1(20,20), C2(20,20))
      INTEGER NN
      PARAMETER (NN = 19)
      DATA A1/400*1./ 
      DATA B1/400*2./ 
      DATA C1/400*3./ 
      DATA B2/400*5./ 
      INTEGER J1, I1

      DO I1=2,19
       DO J1=2,19
        A1(I1,J1) = B1(I1,J1) + C1(I1,J1) - FLOAT (J1)
        CALL SUB2 (A2(I1,J1),C2(I1,J1))
        B2(I1,J1) = B1(I1,J1) + C2(I1,J1)
       END DO
       DO J1=2,19
        C2(I1,1) = C2(I1,1) + A1(I1,J1)
        CALL SUB1 (C1(I1-1,J1))
        B1(I1,J1) = A2(I1,J1) * 2. - B2(I1,J1)
       END DO
      END DO
      I = 20
      WRITE (6, *) ((A1(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((B1(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((B2(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((C1(I,J), I=1,10), J=1,10)
      DO I1=2,19

       DO J1=2,19
        A1(I1,J1) = B1(I1,J1) + C1(I1,J1) - FLOAT (J1)
        CALL SUB2 (A2(I1,J1),C2(I1,J1))
        B2(I1,J1) = B1(I1,J1) + C2(I1,J1)
       END DO

       DO J1=2,19
        C2(I1,1) = C2(I1,1) + A1(I1,J1)
        CALL SUB1 (C1(I1-1,J1))
        B1(I1,J1) = A2(I1,J1) * 2. - B2(I1,J1)
       END DO
      END DO
      I = 20
      WRITE (6, *) ((A1(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((B1(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((B2(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((C1(I,J), I=1,10), J=1,10)
      STOP 
      END
    
      SUBROUTINE SUB1 ( X )
       X = X + (1.,2.)
       RETURN 
      END
    
      SUBROUTINE SUB2 ( X, Y )
       X = 1. + X
       Y = 1. + Y
       RETURN 
      END
