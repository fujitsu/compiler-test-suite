      PROGRAM MAIN

       REAL*8 A(100,100), B(100,100), C(100,100), D(100,100)
       REAL*8 E(10,10,10), F(10,10,10)
       LOGICAL M(100)
       REAL S1
       N = 100
       DATA A/10000*0./ 
       DATA B/10000*1./ 
       DATA C/10000*2./ 
       DATA D/10000*3./ 
       DATA E/1000*1./ 
       DATA F/1000*2./ 
       DATA M/50*.TRUE.,50*.FALSE./ 

       CALL SUB1 (A,B,C,D,E,F,M,N)

       CALL SUB2 (A,B,C,M,N)

       CALL SUB3 (A,N)
       S = 0.
C$OMP PARALLEL SHARED (A,S) PRIVATE (J,I,S1)
       S1 = 0.
C$OMP DO 
       DO J=1,100
        DO I=1,97,4
         S1 = S1 + A(I,J)
         S1 = S1 + A(I+1,J)
         S1 = S1 + A(I+2,J)
         S1 = S1 + A(I+3,J)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II1)
       S = S + S1
C$OMP END CRITICAL (II1)
C$OMP END PARALLEL 
       WRITE (6, *) S
       STOP 
      END

      SUBROUTINE SUB1 ( A, B, C, D, E, F, M, N )

       REAL*8 A(N,N), B(N,N), C(100,100), D(100,100)
       REAL*8 E(10,10,10), F(10,10,10), S1, S2
       LOGICAL M(100)
       SAVE S1

       DO J=1,97,4
        A(J,1) = B(J,1)
        A(J+1,1) = B(J+1,1)
        A(J+2,1) = B(J+2,1)
        A(J+3,1) = B(J+3,1)
       END DO
C$OMP PARALLEL SHARED (C,D,E,F) PRIVATE (J,I,K)
C$OMP DO 
       DO J=1,100

        DO I=1,97,4
         C(I,J) = D(I,J)
         C(I+1,J) = D(I+1,J)
         C(I+2,J) = D(I+2,J)
         C(I+3,J) = D(I+3,J)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO K=1,10
        DO J=1,7,4
         DO I=1,6,5
          E(I,J,K) = F(I,J,K)
          E(I+1,J,K) = F(I+1,J,K)
          E(I+2,J,K) = F(I+2,J,K)
          E(I+3,J,K) = F(I+3,J,K)
          E(I+4,J,K) = F(I+4,J,K)
          E(I,J+1,K) = F(I,J+1,K)
          E(I+1,J+1,K) = F(I+1,J+1,K)
          E(I+2,J+1,K) = F(I+2,J+1,K)
          E(I+3,J+1,K) = F(I+3,J+1,K)
          E(I+4,J+1,K) = F(I+4,J+1,K)
          E(I,J+2,K) = F(I,J+2,K)
          E(I+1,J+2,K) = F(I+1,J+2,K)
          E(I+2,J+2,K) = F(I+2,J+2,K)
          E(I+3,J+2,K) = F(I+3,J+2,K)
          E(I+4,J+2,K) = F(I+4,J+2,K)
          E(I,J+3,K) = F(I,J+3,K)
          E(I+1,J+3,K) = F(I+1,J+3,K)
          E(I+2,J+3,K) = F(I+2,J+3,K)
          E(I+3,J+3,K) = F(I+3,J+3,K)
          E(I+4,J+3,K) = F(I+4,J+3,K)
         END DO
        END DO
        DO J=9,10,1
         DO I=1,6,5
          E(I,J,K) = F(I,J,K)
          E(I+1,J,K) = F(I+1,J,K)
          E(I+2,J,K) = F(I+2,J,K)
          E(I+3,J,K) = F(I+3,J,K)
          E(I+4,J,K) = F(I+4,J,K)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       DO I=1,100
        IF (M(I)) THEN
         A(I,2) = B(I,2)
        END IF
       END DO

       DO I=1,100
        S2 = A(I,2)
        IF (M(I)) S1 = SQRT (S2)
        B(I,2) = S1
       END DO

       DO I=1,100
        IF (M(I)) THEN
         A(I,2) = SQRT (B(I,2)) + C(I,2)
        END IF
       END DO
       RETURN 
      END

      SUBROUTINE SUB2 ( A, B, C, M, N )
       REAL*8 A(N,N), B(N,N), C(100,100)
       LOGICAL M(100)
       INTEGER II2, II1

       II2 = N / 4
       II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 333) SHARED (N,A,B) PRIVATE (I)
C$OMP DO 
       DO I=1,N-3,4
        A(I,5) = B(I,5)
        A(I+1,5) = B(I+1,5)
        A(I+2,5) = B(I+2,5)
        A(I+3,5) = B(I+3,5)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II1,N,1
        A(I,5) = B(I,5)
       END DO

       DO I=1,100
        IF (M(I)) THEN
         A(I,2) = SQRT (B(I,2)) + C(I,2)
        END IF
       END DO


       RETURN 
      END

      SUBROUTINE SUB3 ( A, N )
       REAL*8 A(N,N), B
       INTEGER II2, II1
       II2 = N / 4
       II1 = II2 * 4 + 1
C$OMP PARALLEL IF (N .GT. 500) SHARED (N,A) PRIVATE (I)
C$OMP DO 
       DO I=1,N-3,4
        A(I,I) = I
        A(I+1,I+1) = I + 1
        A(I+2,I+2) = I + 2
        A(I+3,I+3) = I + 3
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=II1,N,1
        A(I,I) = I
       END DO

       RETURN 
      END
