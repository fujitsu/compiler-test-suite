      REAL*4 A(20), B(20), C(20), D(20), E(20)
      EQUIVALENCE (A, D), (E, B)
      DATA A/20*1./ 
      DATA B/20*2./ 
      DATA C/20*3./ 

      DO I=2,18
       A(I) = B(I) + C(I)
       CALL SUB (D(I))
      END DO

      DO I=2,18
       B(I) = A(I) + C(I)
       CALL SUB (E(I))
      END DO

      DO I=2,18
       A(1) = B(I) + C(I)
       CALL SUB (A(I))
      END DO
      WRITE (6, *) A
      WRITE (6, *) B

      DO I=2,18
       A(I) = B(I) + C(I)
       CALL SUB (D(1))
      END DO

      DO I=2,18
       B(1) = A(I) + C(I)
       CALL SUB (E(I))
      END DO
      WRITE (6, *) A
      WRITE (6, *) B
      STOP 
      END
    
      SUBROUTINE SUB ( X )
       X = 1. + X
       RETURN 
      END
