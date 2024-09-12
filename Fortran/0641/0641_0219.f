      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5), RB(5,5,5,5), RC(5,5,5)
       INTEGER*4 H
       INTEGER II3, II2, II1, I1
       LOGICAL LL1
C$OMP PARALLEL SHARED (CA,CB,M,RA,RC,RB) PRIVATE (N,L,K,J,I1,H,II1,II2,
C$OMP& LL1,II3)
C$OMP DO LASTPRIVATE (M)
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,L,1,N) = (1., 0.)
            CA(2,I1,J,K,L,1,N) = (1., 0.)
            CA(3,I1,J,K,L,1,N) = (1., 0.)
            CA(4,I1,J,K,L,1,N) = (1., 0.)
            CA(5,I1,J,K,L,1,N) = (1., 0.)
            CA(1,I1,J,K,L,2,N) = (1., 0.)
            CA(2,I1,J,K,L,2,N) = (1., 0.)
            CA(3,I1,J,K,L,2,N) = (1., 0.)
            CA(4,I1,J,K,L,2,N) = (1., 0.)
            CA(5,I1,J,K,L,2,N) = (1., 0.)
            CA(1,I1,J,K,L,3,N) = (1., 0.)
            CA(2,I1,J,K,L,3,N) = (1., 0.)
            CA(3,I1,J,K,L,3,N) = (1., 0.)
            CA(4,I1,J,K,L,3,N) = (1., 0.)
            CA(5,I1,J,K,L,3,N) = (1., 0.)
            CA(1,I1,J,K,L,4,N) = (1., 0.)
            CA(2,I1,J,K,L,4,N) = (1., 0.)
            CA(3,I1,J,K,L,4,N) = (1., 0.)
            CA(4,I1,J,K,L,4,N) = (1., 0.)
            CA(5,I1,J,K,L,4,N) = (1., 0.)
            CB(1,I1,J,K,L,1,N) = (1., 0.)
            CB(2,I1,J,K,L,1,N) = (1., 0.)
            CB(3,I1,J,K,L,1,N) = (1., 0.)
            CB(4,I1,J,K,L,1,N) = (1., 0.)
            CB(5,I1,J,K,L,1,N) = (1., 0.)
            CB(1,I1,J,K,L,2,N) = (1., 0.)
            CB(2,I1,J,K,L,2,N) = (1., 0.)
            CB(3,I1,J,K,L,2,N) = (1., 0.)
            CB(4,I1,J,K,L,2,N) = (1., 0.)
            CB(5,I1,J,K,L,2,N) = (1., 0.)
            CB(1,I1,J,K,L,3,N) = (1., 0.)
            CB(2,I1,J,K,L,3,N) = (1., 0.)
            CB(3,I1,J,K,L,3,N) = (1., 0.)
            CB(4,I1,J,K,L,3,N) = (1., 0.)
            CB(5,I1,J,K,L,3,N) = (1., 0.)
            CB(1,I1,J,K,L,4,N) = (1., 0.)
            CB(2,I1,J,K,L,4,N) = (1., 0.)
            CB(3,I1,J,K,L,4,N) = (1., 0.)
            CB(4,I1,J,K,L,4,N) = (1., 0.)
            CB(5,I1,J,K,L,4,N) = (1., 0.)
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,L,5,N) = (1., 0.)
            CA(2,I1,J,K,L,5,N) = (1., 0.)
            CA(3,I1,J,K,L,5,N) = (1., 0.)
            CA(4,I1,J,K,L,5,N) = (1., 0.)
            CA(5,I1,J,K,L,5,N) = (1., 0.)
            CB(1,I1,J,K,L,5,N) = (1., 0.)
            CB(2,I1,J,K,L,5,N) = (1., 0.)
            CB(3,I1,J,K,L,5,N) = (1., 0.)
            CB(4,I1,J,K,L,5,N) = (1., 0.)
            CB(5,I1,J,K,L,5,N) = (1., 0.)
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
            RC(1,1,K) = 1.
            RC(2,1,K) = 1.
            RC(3,1,K) = 1.
            RC(4,1,K) = 1.
            RC(5,1,K) = 1.
            RC(1,2,K) = 1.
            RC(2,2,K) = 1.
            RC(3,2,K) = 1.
            RC(4,2,K) = 1.
            RC(5,2,K) = 1.
            RC(1,3,K) = 1.
            RC(2,3,K) = 1.
            RC(3,3,K) = 1.
            RC(4,3,K) = 1.
            RC(5,3,K) = 1.
            RC(1,4,K) = 1.
            RC(2,4,K) = 1.
            RC(3,4,K) = 1.
            RC(4,4,K) = 1.
            RC(5,4,K) = 1.
            RC(1,5,K) = 1.
            RC(2,5,K) = 1.
            RC(3,5,K) = 1.
            RC(4,5,K) = 1.
            RC(5,5,K) = 1.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,5
        DO J=1,5
         DO H=1,5
          DO II2=1,5
           DO N=1,5
            RB(1,J,1,L) = 1.
            RB(2,J,1,L) = 1.
            RB(3,J,1,L) = 1.
            RB(4,J,1,L) = 1.
            RB(5,J,1,L) = 1.
            RB(1,J,2,L) = 1.
            RB(2,J,2,L) = 1.
            RB(3,J,2,L) = 1.
            RB(4,J,2,L) = 1.
            RB(5,J,2,L) = 1.
            RB(1,J,3,L) = 1.
            RB(2,J,3,L) = 1.
            RB(3,J,3,L) = 1.
            RB(4,J,3,L) = 1.
            RB(5,J,3,L) = 1.
            RB(1,J,4,L) = 1.
            RB(2,J,4,L) = 1.
            RB(3,J,4,L) = 1.
            RB(4,J,4,L) = 1.
            RB(5,J,4,L) = 1.
            RB(1,J,5,L) = 1.
            RB(2,J,5,L) = 1.
            RB(3,J,5,L) = 1.
            RB(4,J,5,L) = 1.
            RB(5,J,5,L) = 1.
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO LASTPRIVATE (M)
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5

            CA(1,I1,J,K,L,1,N) = 1. + CB(1,I1,J,K,L,1,N)
            CA(2,I1,J,K,L,1,N) = 1. + CB(2,I1,J,K,L,1,N)
            CA(3,I1,J,K,L,1,N) = 1. + CB(3,I1,J,K,L,1,N)
            CA(4,I1,J,K,L,1,N) = 1. + CB(4,I1,J,K,L,1,N)
            CA(5,I1,J,K,L,1,N) = 1. + CB(5,I1,J,K,L,1,N)
            CA(1,I1,J,K,L,2,N) = 1. + CB(1,I1,J,K,L,2,N)
            CA(2,I1,J,K,L,2,N) = 1. + CB(2,I1,J,K,L,2,N)
            CA(3,I1,J,K,L,2,N) = 1. + CB(3,I1,J,K,L,2,N)
            CA(4,I1,J,K,L,2,N) = 1. + CB(4,I1,J,K,L,2,N)
            CA(5,I1,J,K,L,2,N) = 1. + CB(5,I1,J,K,L,2,N)
            CA(1,I1,J,K,L,3,N) = 1. + CB(1,I1,J,K,L,3,N)
            CA(2,I1,J,K,L,3,N) = 1. + CB(2,I1,J,K,L,3,N)
            CA(3,I1,J,K,L,3,N) = 1. + CB(3,I1,J,K,L,3,N)
            CA(4,I1,J,K,L,3,N) = 1. + CB(4,I1,J,K,L,3,N)
            CA(5,I1,J,K,L,3,N) = 1. + CB(5,I1,J,K,L,3,N)
            CA(1,I1,J,K,L,4,N) = 1. + CB(1,I1,J,K,L,4,N)
            CA(2,I1,J,K,L,4,N) = 1. + CB(2,I1,J,K,L,4,N)
            CA(3,I1,J,K,L,4,N) = 1. + CB(3,I1,J,K,L,4,N)
            CA(4,I1,J,K,L,4,N) = 1. + CB(4,I1,J,K,L,4,N)
            CA(5,I1,J,K,L,4,N) = 1. + CB(5,I1,J,K,L,4,N)
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,L,5,N) = 1. + CB(1,I1,J,K,L,5,N)
            CA(2,I1,J,K,L,5,N) = 1. + CB(2,I1,J,K,L,5,N)
            CA(3,I1,J,K,L,5,N) = 1. + CB(3,I1,J,K,L,5,N)
            CA(4,I1,J,K,L,5,N) = 1. + CB(4,I1,J,K,L,5,N)
            CA(5,I1,J,K,L,5,N) = 1. + CB(5,I1,J,K,L,5,N)
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,5
        DO K=1,5

         DO H=1,5
          DO J=1,5
           DO II3=1,5
            DO N=1,5
             LL1 = H + II3 + N .GE. 10
             DO I1=1,5
              RA(I1,K,L) = RB(I1,K,L,II3) + RC(I1,K,L)
              IF (LL1) THEN
               RA(I1,K,L) = 0.
              END IF
             END DO
            END DO
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
