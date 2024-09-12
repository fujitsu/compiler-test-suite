      PROGRAM MAIN
       REAL*4 RA(5,5,5,5,5,5,5)
       INTEGER*4 H
       INTEGER I1
C$OMP PARALLEL SHARED (RA) PRIVATE (N,L,K,J,I1)
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            RA(1,I1,J,K,L,1,N) = 1.
            RA(2,I1,J,K,L,1,N) = 1.
            RA(3,I1,J,K,L,1,N) = 1.
            RA(4,I1,J,K,L,1,N) = 1.
            RA(5,I1,J,K,L,1,N) = 1.
            RA(1,I1,J,K,L,2,N) = 1.
            RA(2,I1,J,K,L,2,N) = 1.
            RA(3,I1,J,K,L,2,N) = 1.
            RA(4,I1,J,K,L,2,N) = 1.
            RA(5,I1,J,K,L,2,N) = 1.
            RA(1,I1,J,K,L,3,N) = 1.
            RA(2,I1,J,K,L,3,N) = 1.
            RA(3,I1,J,K,L,3,N) = 1.
            RA(4,I1,J,K,L,3,N) = 1.
            RA(5,I1,J,K,L,3,N) = 1.
            RA(1,I1,J,K,L,4,N) = 1.
            RA(2,I1,J,K,L,4,N) = 1.
            RA(3,I1,J,K,L,4,N) = 1.
            RA(4,I1,J,K,L,4,N) = 1.
            RA(5,I1,J,K,L,4,N) = 1.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            RA(1,I1,J,K,L,5,N) = 1.
            RA(2,I1,J,K,L,5,N) = 1.
            RA(3,I1,J,K,L,5,N) = 1.
            RA(4,I1,J,K,L,5,N) = 1.
            RA(5,I1,J,K,L,5,N) = 1.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO N=1,5,2
        DO J=1,5
C$OMP PARALLEL SHARED (N,J,RA) PRIVATE (I1,L,K)
C$OMP DO 
         DO I1=1,5
          DO L=1,5
           DO K=1,5

            RA(1,I1,J,K,L,1,N) = 2.
            RA(2,I1,J,K,L,1,N) = 2.
            RA(3,I1,J,K,L,1,N) = 2.
            RA(4,I1,J,K,L,1,N) = 2.
            RA(5,I1,J,K,L,1,N) = 2.
            RA(1,I1,J,K,L,2,N) = 2.
            RA(2,I1,J,K,L,2,N) = 2.
            RA(3,I1,J,K,L,2,N) = 2.
            RA(4,I1,J,K,L,2,N) = 2.
            RA(5,I1,J,K,L,2,N) = 2.
            RA(1,I1,J,K,L,3,N) = 2.
            RA(2,I1,J,K,L,3,N) = 2.
            RA(3,I1,J,K,L,3,N) = 2.
            RA(4,I1,J,K,L,3,N) = 2.
            RA(5,I1,J,K,L,3,N) = 2.
            RA(1,I1,J,K,L,4,N) = 2.
            RA(2,I1,J,K,L,4,N) = 2.
            RA(3,I1,J,K,L,4,N) = 2.
            RA(4,I1,J,K,L,4,N) = 2.
            RA(5,I1,J,K,L,4,N) = 2.
           END DO
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
         DO I1=1,5
          DO L=1,5
           DO K=1,5
            RA(1,I1,J,K,L,5,N) = 2.
            RA(2,I1,J,K,L,5,N) = 2.
            RA(3,I1,J,K,L,5,N) = 2.
            RA(4,I1,J,K,L,5,N) = 2.
            RA(5,I1,J,K,L,5,N) = 2.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (RA) PRIVATE (N,L,K,J,I1)
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5

            RA(1,I1,J,K,L,1,N) = 3.
            RA(2,I1,J,K,L,1,N) = 3.
            RA(3,I1,J,K,L,1,N) = 3.
            RA(4,I1,J,K,L,1,N) = 3.
            RA(5,I1,J,K,L,1,N) = 3.
            RA(1,I1,J,K,L,3,N) = 3.
            RA(2,I1,J,K,L,3,N) = 3.
            RA(3,I1,J,K,L,3,N) = 3.
            RA(4,I1,J,K,L,3,N) = 3.
            RA(5,I1,J,K,L,3,N) = 3.
            RA(1,I1,J,K,L,5,N) = 3.
            RA(2,I1,J,K,L,5,N) = 3.
            RA(3,I1,J,K,L,5,N) = 3.
            RA(4,I1,J,K,L,5,N) = 3.
            RA(5,I1,J,K,L,5,N) = 3.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5
        DO L=1,5,2
         DO K=1,5
          DO J=1,5
           DO I1=1,5

            RA(1,I1,J,K,L,1,N) = 4.
            RA(2,I1,J,K,L,1,N) = 4.
            RA(3,I1,J,K,L,1,N) = 4.
            RA(4,I1,J,K,L,1,N) = 4.
            RA(5,I1,J,K,L,1,N) = 4.
            RA(1,I1,J,K,L,2,N) = 4.
            RA(2,I1,J,K,L,2,N) = 4.
            RA(3,I1,J,K,L,2,N) = 4.
            RA(4,I1,J,K,L,2,N) = 4.
            RA(5,I1,J,K,L,2,N) = 4.
            RA(1,I1,J,K,L,3,N) = 4.
            RA(2,I1,J,K,L,3,N) = 4.
            RA(3,I1,J,K,L,3,N) = 4.
            RA(4,I1,J,K,L,3,N) = 4.
            RA(5,I1,J,K,L,3,N) = 4.
            RA(1,I1,J,K,L,4,N) = 4.
            RA(2,I1,J,K,L,4,N) = 4.
            RA(3,I1,J,K,L,4,N) = 4.
            RA(4,I1,J,K,L,4,N) = 4.
            RA(5,I1,J,K,L,4,N) = 4.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5,2
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            RA(1,I1,J,K,L,5,N) = 4.
            RA(2,I1,J,K,L,5,N) = 4.
            RA(3,I1,J,K,L,5,N) = 4.
            RA(4,I1,J,K,L,5,N) = 4.
            RA(5,I1,J,K,L,5,N) = 4.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K=1,5,2
          DO J=1,5
           DO I1=1,5

            RA(1,I1,J,K,L,1,N) = 5.
            RA(2,I1,J,K,L,1,N) = 5.
            RA(3,I1,J,K,L,1,N) = 5.
            RA(4,I1,J,K,L,1,N) = 5.
            RA(5,I1,J,K,L,1,N) = 5.
            RA(1,I1,J,K,L,2,N) = 5.
            RA(2,I1,J,K,L,2,N) = 5.
            RA(3,I1,J,K,L,2,N) = 5.
            RA(4,I1,J,K,L,2,N) = 5.
            RA(5,I1,J,K,L,2,N) = 5.
            RA(1,I1,J,K,L,3,N) = 5.
            RA(2,I1,J,K,L,3,N) = 5.
            RA(3,I1,J,K,L,3,N) = 5.
            RA(4,I1,J,K,L,3,N) = 5.
            RA(5,I1,J,K,L,3,N) = 5.
            RA(1,I1,J,K,L,4,N) = 5.
            RA(2,I1,J,K,L,4,N) = 5.
            RA(3,I1,J,K,L,4,N) = 5.
            RA(4,I1,J,K,L,4,N) = 5.
            RA(5,I1,J,K,L,4,N) = 5.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5,2
          DO J=1,5
           DO I1=1,5
            RA(1,I1,J,K,L,5,N) = 5.
            RA(2,I1,J,K,L,5,N) = 5.
            RA(3,I1,J,K,L,5,N) = 5.
            RA(4,I1,J,K,L,5,N) = 5.
            RA(5,I1,J,K,L,5,N) = 5.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5,2
           DO I1=1,5

            RA(1,I1,J,K,L,1,N) = 5.
            RA(2,I1,J,K,L,1,N) = 5.
            RA(3,I1,J,K,L,1,N) = 5.
            RA(4,I1,J,K,L,1,N) = 5.
            RA(5,I1,J,K,L,1,N) = 5.
            RA(1,I1,J,K,L,2,N) = 5.
            RA(2,I1,J,K,L,2,N) = 5.
            RA(3,I1,J,K,L,2,N) = 5.
            RA(4,I1,J,K,L,2,N) = 5.
            RA(5,I1,J,K,L,2,N) = 5.
            RA(1,I1,J,K,L,3,N) = 5.
            RA(2,I1,J,K,L,3,N) = 5.
            RA(3,I1,J,K,L,3,N) = 5.
            RA(4,I1,J,K,L,3,N) = 5.
            RA(5,I1,J,K,L,3,N) = 5.
            RA(1,I1,J,K,L,4,N) = 5.
            RA(2,I1,J,K,L,4,N) = 5.
            RA(3,I1,J,K,L,4,N) = 5.
            RA(4,I1,J,K,L,4,N) = 5.
            RA(5,I1,J,K,L,4,N) = 5.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5,2
           DO I1=1,5
            RA(1,I1,J,K,L,5,N) = 5.
            RA(2,I1,J,K,L,5,N) = 5.
            RA(3,I1,J,K,L,5,N) = 5.
            RA(4,I1,J,K,L,5,N) = 5.
            RA(5,I1,J,K,L,5,N) = 5.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5,2

            RA(1,I1,J,K,L,1,N) = 5.
            RA(2,I1,J,K,L,1,N) = 5.
            RA(3,I1,J,K,L,1,N) = 5.
            RA(4,I1,J,K,L,1,N) = 5.
            RA(5,I1,J,K,L,1,N) = 5.
            RA(1,I1,J,K,L,2,N) = 5.
            RA(2,I1,J,K,L,2,N) = 5.
            RA(3,I1,J,K,L,2,N) = 5.
            RA(4,I1,J,K,L,2,N) = 5.
            RA(5,I1,J,K,L,2,N) = 5.
            RA(1,I1,J,K,L,3,N) = 5.
            RA(2,I1,J,K,L,3,N) = 5.
            RA(3,I1,J,K,L,3,N) = 5.
            RA(4,I1,J,K,L,3,N) = 5.
            RA(5,I1,J,K,L,3,N) = 5.
            RA(1,I1,J,K,L,4,N) = 5.
            RA(2,I1,J,K,L,4,N) = 5.
            RA(3,I1,J,K,L,4,N) = 5.
            RA(4,I1,J,K,L,4,N) = 5.
            RA(5,I1,J,K,L,4,N) = 5.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5,2
            RA(1,I1,J,K,L,5,N) = 5.
            RA(2,I1,J,K,L,5,N) = 5.
            RA(3,I1,J,K,L,5,N) = 5.
            RA(4,I1,J,K,L,5,N) = 5.
            RA(5,I1,J,K,L,5,N) = 5.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5

            RA(1,I1,J,K,L,1,N) = 5.
            RA(3,I1,J,K,L,1,N) = 5.
            RA(5,I1,J,K,L,1,N) = 5.
            RA(1,I1,J,K,L,2,N) = 5.
            RA(3,I1,J,K,L,2,N) = 5.
            RA(5,I1,J,K,L,2,N) = 5.
            RA(1,I1,J,K,L,3,N) = 5.
            RA(3,I1,J,K,L,3,N) = 5.
            RA(5,I1,J,K,L,3,N) = 5.
            RA(1,I1,J,K,L,4,N) = 5.
            RA(3,I1,J,K,L,4,N) = 5.
            RA(5,I1,J,K,L,4,N) = 5.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            RA(1,I1,J,K,L,5,N) = 5.
            RA(3,I1,J,K,L,5,N) = 5.
            RA(5,I1,J,K,L,5,N) = 5.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       WRITE (6, *) 'RA=', (RA(I,I,I,I,I,I,I), I=1,5)
       STOP 
      END
