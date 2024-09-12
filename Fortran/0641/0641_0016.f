      PROGRAM MAIN
       REAL A(-500:500), B(-490:500)
       INTEGER N
       PARAMETER (N = 1)
       REAL RR1
       PARAMETER (RR1 = 1. / 3)
       REAL RR5, RR4, RR3, RR2
C$OMP PARALLEL SHARED (A,B) PRIVATE (I)
C$OMP DO 
       DO I=-500,497,4
        A(I) = I
        A(I+1) = I + 1
        A(I+2) = I + 2
        A(I+3) = I + 3
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP SINGLE 
       A(500) = 500.
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I=-490,497,4
        B(I) = A(I)
        B(I+1) = A(I+1)
        B(I+2) = A(I+2)
        B(I+3) = A(I+3)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=498,500,1
        B(I) = A(I)
       END DO
C$OMP PARALLEL SHARED (A,B) PRIVATE (I)
C$OMP DO 
       DO I=500,-487,-4
        A(I) = B(I) * B(I)
        A(I-1) = B(I-1) * B(I-1)
        A(I-2) = B(I-2) * B(I-2)
        A(I-3) = B(I-3) * B(I-3)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=-488,-490,-1
        A(I) = B(I) * B(I)
       END DO
       DO I=-490,-9,10
        RR2 = A(I+1) * 2
        RR3 = A(I+3) * 2
        RR4 = A(I+5) * 2
        RR5 = A(I+7) * 2
        A(I+8) = A(I+9) * 2
        A(I+6) = RR5
        A(I+4) = RR4
        A(I+2) = RR3
        A(I) = RR2
       END DO
       DO I=100,4,-4
        B(I) = A(I) * RR1
        B(I-1) = A(I-1) * RR1
        B(I-2) = A(I-2) * RR1
        B(I-3) = A(I-3) * RR1
       END DO
       WRITE (6, 999) A, B
  999  FORMAT(10G20.6)
       STOP 
      END
