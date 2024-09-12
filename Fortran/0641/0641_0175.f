      PROGRAM MAIN
       REAL A(1000,4), S(1000)
       DATA S/1000*0.1/ 
       DATA A/4000*3/ 
       REAL B(200,200)
       INTEGER NN, NR, K, M, N
       PARAMETER (NN = 200, NR = 195, K = 5, M = 999, N = 2)
       DATA B/40000*5/ 
       INTEGER II1
       REAL S1 (1000)
C$OMP PARALLEL SHARED (S) PRIVATE (I)
C$OMP DO 
       DO I=2,996,4
        S(I) = 0.
        S(I+1) = 0.
        S(I+2) = 0.
        S(I+3) = 0.
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=998,999,1
        S(I) = 0.
       END DO
C$OMP PARALLEL SHARED (A,S) PRIVATE (J,I,S1,II1)
       DO II1=1,1000
        S1(II1) = 0.
       END DO
C$OMP DO 
       DO J=1,4
        DO I=2,996,4
         S1(I) = S1(I) + A(I,J)
         S1(I) = S1(I) + A(I+1,J)
         S1(I) = S1(I) + A(I+2,J)
         S1(I) = S1(I) + A(I+3,J)
        END DO
        DO I=998,999,1
         S1(I) = S1(I) + A(I,J)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II2)
       DO II1=1,1000
        S(II1) = S(II1) + S1(II1)
       END DO
C$OMP END CRITICAL (II2)
C$OMP BARRIER
C$OMP DO 
       DO I=2,996,4
        A(I,4) = S(I)
        A(I+1,4) = S(I+1)
        A(I+2,4) = S(I+2)
        A(I+3,4) = S(I+3)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=998,999,1
        A(I,4) = S(I)
       END DO

C$OMP PARALLEL SHARED (B,ASUM) PRIVATE (I,J)
C$OMP DO LASTPRIVATE (ASUM)
       DO I=5,195
        ASUM = 0.
        DO J=1,197,4
         ASUM = ASUM + B(I,J)
         ASUM = ASUM + B(I,J+1)
         ASUM = ASUM + B(I,J+2)
         ASUM = ASUM + B(I,J+3)
        END DO
        B(I,5) = B(I,5) - ASUM
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' ASUM= ', ASUM, B(1,1), B(100,100), A(500,2)
       WRITE (6, *) ' S(1)= ', S(1), ' S(100)= ', S(100)
       STOP 
      END
