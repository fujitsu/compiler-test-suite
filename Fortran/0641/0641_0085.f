      DIMENSION C3(50), C2(50), C1(50)
      COMMON /BLK/ C1, C2, C3
      REAL*8 A1(50), A2(50), A3(50)
      COMPLEX*16 C1, C2, C3
      N = 50
      DATA A1/50*1.D0/ 
      DATA A2/50*2.D0/ 
      DATA A3/50*3.D0/ 

      CALL SUB1 (A1,A2,A3,N)
      CALL SUB2 (N)

      WRITE (6, 99) ' A1=', A1
      WRITE (6, 99) ' A2=', A2
      WRITE (6, 99) ' A3=', A3
      WRITE (6, 99) ' C1=', C1
      WRITE (6, 99) ' C2=', C2
      WRITE (6, 99) ' C3=', C3
   99 FORMAT(A,(5D14.7))
      STOP 
      END
    
      BLOCK DATA INIT
       DIMENSION C3(50), C2(50), C1(50)
       COMMON /BLK/ C1, C2, C3
       COMPLEX*16 C1, C2, C3
       DATA C1, C2, C3/50*(1.D0,3.D0),50*(2.D0,-1.D0),50*(4.D0,5.D0)/ 
      END
    
      SUBROUTINE SUB1 ( A, B, C, N )
       REAL*8 A(N), B(N), C(N)
       INTEGER II4, II3, II2, II1
       REAL RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD1
       DO I=2,N-5
        A(I) = B(I) + C(I)
        CALL SUB (A(I),C(I))
        B(I) = A(I-1) * C(I)
       END DO

       II2 = (N - 6) / 4
       II1 = II2 * 4 + 2
       II4 = (N - 6) / 4
       II3 = II4 * 4 + 2
       DD1 = B(1)
       DO K=2,N-8,4
        DD1 = DD1 * A(K) - C(K)
        DD1 = DD1 * A(K+1) - C(K+1)
        DD1 = DD1 * A(K+2) - C(K+2)
        DD1 = DD1 * A(K+3) - C(K+3)
       END DO
       DO K=II1,N-5,1
        DD1 = DD1 * A(K) - C(K)
       END DO
       B(1) = DD1
C$OMP PARALLEL IF (N .GT. 172) SHARED (N,C) PRIVATE (RR1,RR2,RR3,RR4,K)
C$OMP DO 
       DO K=2,N-8,4
        RR2 = FLOAT (K)
        RR3 = FLOAT (K + 1)
        RR4 = FLOAT (K + 2)
        RR1 = FLOAT (K + 3)
        C(K) = C(K) - RR2
        C(K+1) = C(K+1) - RR3
        C(K+2) = C(K+2) - RR4
        C(K+3) = C(K+3) - RR1
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO K=II3,N-5,1
        RR1 = FLOAT (K)
        C(K) = C(K) - RR1
       END DO
       DO K=2,N-5
        WRITE (6, 88) ' C(K)=', C(K)
       END DO
   88  FORMAT(A,(2D14.7))
       RETURN 
      END
    
      SUBROUTINE SUB ( DX, DY )
       REAL*8 DX, DY
       DY = DY + DX
       RETURN 
      END
    
      SUBROUTINE SUB2 ( N )
       DIMENSION C(50), B(50), A(50)
       COMMON /BLK/ A, B, C
       COMPLEX*16 CX, CY, A, B, C
       EQUIVALENCE (CX, A(1))
       INTEGER II2, II1
       COMPLEX*16 DC5, DC4, DC3, DC2, DC1
       NX = N / 2 + 1
       II2 = NX / 4
       II1 = II2 * 4 + 1
       DO J=1,2
        CY = A(J)
        DO I=1,NX-3,4
         DC1 = B(I) - CY
         B(I) = DC1
         CY = DMIN1 (DIMAG (C(I)), DREAL (DC1))
         DC2 = B(I+1) - CY
         B(I+1) = DC2
         CY = DMIN1 (DIMAG (C(I+1)), DREAL (DC2))
         DC3 = B(I+2) - CY
         B(I+2) = DC3
         CY = DMIN1 (DIMAG (C(I+2)), DREAL (DC3))
         DC4 = B(I+3) - CY
         B(I+3) = DC4
         CY = DMIN1 (DIMAG (C(I+3)), DREAL (DC4))
        END DO
        DO I=II1,NX,1
         DC5 = B(I) - CY
         B(I) = DC5
         CY = DMIN1 (DIMAG (C(I)), DREAL (DC5))
        END DO
       END DO
       DO I=1,NX
        CX = CX + C(I)
        CX = CX + C(I)
       END DO

       C(NX) = CY
       C(N) = CX
       RETURN 
      END
