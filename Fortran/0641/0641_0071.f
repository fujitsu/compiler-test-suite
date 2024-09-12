      PROGRAM MAIN
       REAL*4 A(20), B(20), C(20), D(20)
       EQUIVALENCE (A(1), D(1))
       INTEGER NN
       PARAMETER (NN = 19)
       DATA A/20*1./ 
       DATA B/20*2./ 
       DATA C/20*3./ 
       DO I=2,19
        A(I) = B(I) + C(I)
        CALL SUB (D(I))
       END DO

       DO I=2,19
        B(I) = A(I) + C(I)
        CALL SUB (D(I))
       END DO

       DO I=2,19
        C(I) = B(I) * A(I)
        CALL SUB (D(I))
       END DO

       DO I=2,19
        A(I) = C(I) - B(I)
        CALL SUB (D(I))
       END DO
       CALL SUB1 (A,B,C,(20))
       WRITE (6, *) A
       WRITE (6, *) B
       WRITE (6, *) C
       STOP 
      END
    
      SUBROUTINE SUB1 ( A, B, C, NN )
       DIMENSION A(NN), B(NN), C(NN)
       DIMENSION D(20), E(20)
       EQUIVALENCE (D(1), E(1))
       DO I=1,17,4
        D(I) = B(I)
        D(I+1) = B(I+1)
        D(I+2) = B(I+2)
        D(I+3) = B(I+3)
        E(I) = A(I)
        E(I+1) = A(I+1)
        E(I+2) = A(I+2)
        E(I+3) = A(I+3)
       END DO
       DO J=1,5
        DO I=2,NN
         CALL SUB (D(I))
         E(J) = E(J) - B(I) + C(I)
        END DO
       END DO

       DO J=1,5
        DO I=2,NN
         CALL SUB (E(I))
         D(J) = D(J) - B(I) + A(I)
        END DO
       END DO

       DO J=1,5
        DO I=2,NN
         CALL SUB (D(I))
         E(J) = E(J) - B(I) + A(I)
        END DO
       END DO

       DO J=1,5
        DO I=2,NN
         CALL SUB (D(I))
         D(I) = E(I) - B(I) + C(I)
        END DO
       END DO
       WRITE (6, *) ' D= ', D
       WRITE (6, *) ' E= ', E
       RETURN 
      END
    
      SUBROUTINE SUB ( X )
       X = 1. + X
       RETURN 
      END
