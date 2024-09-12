      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5), RB(5,5,5,5), RC(5,5,5)
       INTEGER*4 H
       INTEGER II5, II4, II3, II2, II1, I1
C$OMP PARALLEL SHARED (CA,CB,M,RA,J) PRIVATE (N,L,K,II2,I1,H,II1,II3,II4
C$OMP& ,II5)
C$OMP DO LASTPRIVATE (M)
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO II2=1,5
           DO I1=1,5
            CA(1,I1,II2,K,L,1,N) = (1., 0.)
            CA(2,I1,II2,K,L,1,N) = (1., 0.)
            CA(3,I1,II2,K,L,1,N) = (1., 0.)
            CA(4,I1,II2,K,L,1,N) = (1., 0.)
            CA(5,I1,II2,K,L,1,N) = (1., 0.)
            CA(1,I1,II2,K,L,2,N) = (1., 0.)
            CA(2,I1,II2,K,L,2,N) = (1., 0.)
            CA(3,I1,II2,K,L,2,N) = (1., 0.)
            CA(4,I1,II2,K,L,2,N) = (1., 0.)
            CA(5,I1,II2,K,L,2,N) = (1., 0.)
            CA(1,I1,II2,K,L,3,N) = (1., 0.)
            CA(2,I1,II2,K,L,3,N) = (1., 0.)
            CA(3,I1,II2,K,L,3,N) = (1., 0.)
            CA(4,I1,II2,K,L,3,N) = (1., 0.)
            CA(5,I1,II2,K,L,3,N) = (1., 0.)
            CA(1,I1,II2,K,L,4,N) = (1., 0.)
            CA(2,I1,II2,K,L,4,N) = (1., 0.)
            CA(3,I1,II2,K,L,4,N) = (1., 0.)
            CA(4,I1,II2,K,L,4,N) = (1., 0.)
            CA(5,I1,II2,K,L,4,N) = (1., 0.)
            CB(1,I1,II2,K,L,1,N) = (1., 0.)
            CB(2,I1,II2,K,L,1,N) = (1., 0.)
            CB(3,I1,II2,K,L,1,N) = (1., 0.)
            CB(4,I1,II2,K,L,1,N) = (1., 0.)
            CB(5,I1,II2,K,L,1,N) = (1., 0.)
            CB(1,I1,II2,K,L,2,N) = (1., 0.)
            CB(2,I1,II2,K,L,2,N) = (1., 0.)
            CB(3,I1,II2,K,L,2,N) = (1., 0.)
            CB(4,I1,II2,K,L,2,N) = (1., 0.)
            CB(5,I1,II2,K,L,2,N) = (1., 0.)
            CB(1,I1,II2,K,L,3,N) = (1., 0.)
            CB(2,I1,II2,K,L,3,N) = (1., 0.)
            CB(3,I1,II2,K,L,3,N) = (1., 0.)
            CB(4,I1,II2,K,L,3,N) = (1., 0.)
            CB(5,I1,II2,K,L,3,N) = (1., 0.)
            CB(1,I1,II2,K,L,4,N) = (1., 0.)
            CB(2,I1,II2,K,L,4,N) = (1., 0.)
            CB(3,I1,II2,K,L,4,N) = (1., 0.)
            CB(4,I1,II2,K,L,4,N) = (1., 0.)
            CB(5,I1,II2,K,L,4,N) = (1., 0.)
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO II2=1,5
           DO I1=1,5
            CA(1,I1,II2,K,L,5,N) = (1., 0.)
            CA(2,I1,II2,K,L,5,N) = (1., 0.)
            CA(3,I1,II2,K,L,5,N) = (1., 0.)
            CA(4,I1,II2,K,L,5,N) = (1., 0.)
            CA(5,I1,II2,K,L,5,N) = (1., 0.)
            CB(1,I1,II2,K,L,5,N) = (1., 0.)
            CB(2,I1,II2,K,L,5,N) = (1., 0.)
            CB(3,I1,II2,K,L,5,N) = (1., 0.)
            CB(4,I1,II2,K,L,5,N) = (1., 0.)
            CB(5,I1,II2,K,L,5,N) = (1., 0.)
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K=1,5
        DO H=1,5
         DO L=1,5
          DO II1=1,5
           DO N=1,5
            RA(1,1,K) = 1.
            RA(2,1,K) = 1.
            RA(3,1,K) = 1.
            RA(4,1,K) = 1.
            RA(5,1,K) = 1.
            RA(1,2,K) = 1.
            RA(2,2,K) = 1.
            RA(3,2,K) = 1.
            RA(4,2,K) = 1.
            RA(5,2,K) = 1.
            RA(1,3,K) = 1.
            RA(2,3,K) = 1.
            RA(3,3,K) = 1.
            RA(4,3,K) = 1.
            RA(5,3,K) = 1.
            RA(1,4,K) = 1.
            RA(2,4,K) = 1.
            RA(3,4,K) = 1.
            RA(4,4,K) = 1.
            RA(5,4,K) = 1.
            RA(1,5,K) = 1.
            RA(2,5,K) = 1.
            RA(3,5,K) = 1.
            RA(4,5,K) = 1.
            RA(5,5,K) = 1.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (J)
       DO N=1,5
        DO II3=1,5
         DO L=1,5

          DO K=1,5
           DO I1=1,5
            CA(1,I1,1,K,L,II3,N) = 1. + CB(1,I1,1,K,L,II3,N)
            CA(2,I1,1,K,L,II3,N) = 1. + CB(2,I1,1,K,L,II3,N)
            CA(3,I1,1,K,L,II3,N) = 1. + CB(3,I1,1,K,L,II3,N)
            CA(4,I1,1,K,L,II3,N) = 1. + CB(4,I1,1,K,L,II3,N)
            CA(5,I1,1,K,L,II3,N) = 1. + CB(5,I1,1,K,L,II3,N)
            CA(1,I1,2,K,L,II3,N) = 1. + CB(1,I1,2,K,L,II3,N)
            CA(2,I1,2,K,L,II3,N) = 1. + CB(2,I1,2,K,L,II3,N)
            CA(3,I1,2,K,L,II3,N) = 1. + CB(3,I1,2,K,L,II3,N)
            CA(4,I1,2,K,L,II3,N) = 1. + CB(4,I1,2,K,L,II3,N)
            CA(5,I1,2,K,L,II3,N) = 1. + CB(5,I1,2,K,L,II3,N)
            CA(1,I1,3,K,L,II3,N) = 1. + CB(1,I1,3,K,L,II3,N)
            CA(2,I1,3,K,L,II3,N) = 1. + CB(2,I1,3,K,L,II3,N)
            CA(3,I1,3,K,L,II3,N) = 1. + CB(3,I1,3,K,L,II3,N)
            CA(4,I1,3,K,L,II3,N) = 1. + CB(4,I1,3,K,L,II3,N)
            CA(5,I1,3,K,L,II3,N) = 1. + CB(5,I1,3,K,L,II3,N)
            CA(1,I1,4,K,L,II3,N) = 1. + CB(1,I1,4,K,L,II3,N)
            CA(2,I1,4,K,L,II3,N) = 1. + CB(2,I1,4,K,L,II3,N)
            CA(3,I1,4,K,L,II3,N) = 1. + CB(3,I1,4,K,L,II3,N)
            CA(4,I1,4,K,L,II3,N) = 1. + CB(4,I1,4,K,L,II3,N)
            CA(5,I1,4,K,L,II3,N) = 1. + CB(5,I1,4,K,L,II3,N)
           END DO
          END DO
         END DO
        END DO
        DO II3=1,5
         DO L=1,5

          DO K=1,5
           DO I1=1,5
            CA(1,I1,5,K,L,II3,N) = 1. + CB(1,I1,5,K,L,II3,N)
            CA(2,I1,5,K,L,II3,N) = 1. + CB(2,I1,5,K,L,II3,N)
            CA(3,I1,5,K,L,II3,N) = 1. + CB(3,I1,5,K,L,II3,N)
            CA(4,I1,5,K,L,II3,N) = 1. + CB(4,I1,5,K,L,II3,N)
            CA(5,I1,5,K,L,II3,N) = 1. + CB(5,I1,5,K,L,II3,N)
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO II4=1,5

        DO K=1,5
         DO L=1,5
          DO II5=1,5
           DO N=1,5
            RA(1,1,II4) = 1. + CB(1,1,II4,K,L,II5,N)
            RA(2,1,II4) = 1. + CB(2,1,II4,K,L,II5,N)
            RA(3,1,II4) = 1. + CB(3,1,II4,K,L,II5,N)
            RA(4,1,II4) = 1. + CB(4,1,II4,K,L,II5,N)
            RA(5,1,II4) = 1. + CB(5,1,II4,K,L,II5,N)
            RA(1,2,II4) = 1. + CB(1,2,II4,K,L,II5,N)
            RA(2,2,II4) = 1. + CB(2,2,II4,K,L,II5,N)
            RA(3,2,II4) = 1. + CB(3,2,II4,K,L,II5,N)
            RA(4,2,II4) = 1. + CB(4,2,II4,K,L,II5,N)
            RA(5,2,II4) = 1. + CB(5,2,II4,K,L,II5,N)
            RA(1,3,II4) = 1. + CB(1,3,II4,K,L,II5,N)
            RA(2,3,II4) = 1. + CB(2,3,II4,K,L,II5,N)
            RA(3,3,II4) = 1. + CB(3,3,II4,K,L,II5,N)
            RA(4,3,II4) = 1. + CB(4,3,II4,K,L,II5,N)
            RA(5,3,II4) = 1. + CB(5,3,II4,K,L,II5,N)
            RA(1,4,II4) = 1. + CB(1,4,II4,K,L,II5,N)
            RA(2,4,II4) = 1. + CB(2,4,II4,K,L,II5,N)
            RA(3,4,II4) = 1. + CB(3,4,II4,K,L,II5,N)
            RA(4,4,II4) = 1. + CB(4,4,II4,K,L,II5,N)
            RA(5,4,II4) = 1. + CB(5,4,II4,K,L,II5,N)
            RA(1,5,II4) = 1. + CB(1,5,II4,K,L,II5,N)
            RA(2,5,II4) = 1. + CB(2,5,II4,K,L,II5,N)
            RA(3,5,II4) = 1. + CB(3,5,II4,K,L,II5,N)
            RA(4,5,II4) = 1. + CB(4,5,II4,K,L,II5,N)
            RA(5,5,II4) = 1. + CB(5,5,II4,K,L,II5,N)
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) 'CA=', (CA(I,I,I,I,I,I,I), I=1,5)
       WRITE (6, *) 'RA=', (RA(I,I,I), I=1,5)
       STOP 
      END
