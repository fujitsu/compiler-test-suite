      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D-E), COMPLEX*16 (C)
       DIMENSION A(50), B(50), D(50), E(50)
       DIMENSION C1(50), C2(50), C3(50)
       EQUIVALENCE (A(1), D(1)), (E(50), C3(50))
       INTEGER NN
       PARAMETER (NN = 48)
       DATA A/50*4.D0/ 
       DATA B/50*2.D0/ 
       DATA C1/50*(1.D0,2.D0)/ 
       DATA C2/50*(-2.D0,-1.2D0)/ 
       DATA C3/50*(3.D0,2.D0)/ 
       INTEGER J1
       COMPLEX*16 DC2, DC1

       DO I=2,48
        CALL SUBC (C3(I))
        C1(I) = C2(I) + DCMPLX (A(I) + DREAL (C1(I)), E(I))
       END DO
       DO J1=2,16
        DC1 = C2(J1)
        DO I=2,48
         A(I) = DREAL (C1(I)) + DIMAG (C3(I))
         CALL SUBR (D(I))
         CALL SUBC (E(I))
         DC1 = DC1 + C1(I)
        END DO
        C2(J1) = DC1
       END DO
       DO I=2,48
        B(I) = A(I) - DREAL (C2(I))
        CALL SUBR (A(1))
        D(I-1) = DIMAG (C3(I)) + E(I)
       END DO
       DC2 = C2(17)
       DO I=2,48
        DX = A(I) + DREAL (C3(I))
        DY = A(I) + DIMAG (C3(I))
        CALL SUBR (DX + A(I))
        CALL SUBR (DY + D(I))
        DC2 = DC2 - DCMPLX (DX, DY) + C1(I)
       END DO
       C2(17) = DC2
       WRITE (6, 1000) A
       WRITE (6, 1000) B
       DO I=1,48
        WRITE (6, 1000) REAL (C1(I)), IMAG (C1(I))
        WRITE (6, 1000) REAL (C2(I)), IMAG (C2(I))
        WRITE (6, 1000) REAL (C3(I)), IMAG (C3(I))
       END DO
 1000  FORMAT(G20.6,2X,G20.6)
       STOP 
      END
    
      SUBROUTINE SUBR ( X )
       REAL*8 X
       X = 1D0 + X
       RETURN 
      END
    
      SUBROUTINE SUBC ( CX )
       REAL*8 CX
       CX = CX + (1.D0,-1.D0)
       RETURN 
      END
