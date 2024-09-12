      REAL*4 A(20,20), B(20,20), C(20,20)
      COMPLEX*8 C1(20,20), C2(20,20), C3(20,20)
      INTEGER N
      PARAMETER (N = 19)
      DATA A/400*1./ 
      DATA B/400*2./ 
      DATA C/400*3./ 
      DATA C1/400*(1.,2.)/ 
      DATA C2/400*(2.,3.)/ 
      DATA C3/400*(-1.,-2.)/ 
      INTEGER J1, I1
      REAL RR2, RR1

      DO I1=2,19
       RX = FLOAT (I1)
       DO J1=2,19
        RY = FLOAT (J1)
        CALL SUB1 (C2(I1,J1))
        C2(I1,J1) = C2(I1,J1) + C3(I1,J1) - CMPLX (RX, RY)
        C3(I1,J1) = C1(I1,J1) - C2(I1,J1)
        RR1 = C(I1,J1)
        RR2 = B(I1,J1)
        DO K=2,9
         A(I1,J1) = RR2 + RR1
         RR2 = A(J1,I1) * 2. - RR1
        END DO
        B(I1,J1) = RR2
       END DO
       C1(I1,I1) = C2(I1,I1) + C3(I1,1)
       DO J1=2,18
        RX = C1(I1,J1) - C2(I1,J1)
        RY = C2(I1,J1) - C3(I1,J1)
        C(I1,J1) = C(I1,J1) - MIN1 (RX, RY)
       END DO
       END DO
      I = 20
      WRITE (6, *) ((C1(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((C2(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((C3(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((A(I,J), I=1,10), J=1,10)
      WRITE (6, *) ((B(I,J), I=1,10), J=1,10)
      STOP 
      END
    
      SUBROUTINE SUB1 ( X )
       COMPLEX*8 X
       X = X + (1.,2.)
       RETURN 
      END
