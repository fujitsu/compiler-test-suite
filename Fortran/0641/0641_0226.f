      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5), RB(5,5,5,5), RC(5,5,5)
       INTEGER*4 H
       INTEGER II2, II1, I1, H1
       REAL RR3, RR2, RR1
C$OMP PARALLEL SHARED (CA,CB,M,RB) PRIVATE (N,L,K,J,I1,H1,II1,RR1,RR2,
C$OMP& RR3,II2,S,T)
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
       DO L=1,5
        DO J=1,5
         DO H1=1,5
          DO II1=1,5
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

C$OMP DO 
       DO K=1,5
        DO J=1,5
         DO I1=1,5
          DO L=1,5
           DO II2=1,5
            DO N=1,5
             S = CA(1,I1,J,K,L,II2,N)
             IF (S .GE. 5.) THEN
              T = CB(1,I1,J,K,L,II2,N) + S
             ELSE
              T = CB(1,I1,J,K,L,N,II2)
             END IF
             RR1 = T + S
            END DO
            RR2 = RR1
           END DO
           RR3 = RR2
          END DO
          RB(1,I1,J,K) = RR3
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) 'RB=', (RB(I,I,I,I), I=1,5)
       STOP 
      END
