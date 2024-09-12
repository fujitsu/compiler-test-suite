      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5,5,5,5,5)
       INTEGER*4 H
       INTEGER K1, I1
       COMPLEX CC10, CC9, CC8, CC7, CC6, CC5, CC4, CC3, CC2, CC1
C$OMP PARALLEL SHARED (CA,CB,RA) PRIVATE (N,L,K1,J,I1,CC1,CC2,CC3,CC4,
C$OMP& CC5,CC6,CC7,CC8,CC9,CC10)
C$OMP DO 
       DO N=1,5
        DO L=1,5
         DO K1=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K1,L,1,N) = (1., 0.)
            CA(2,I1,J,K1,L,1,N) = (1., 0.)
            CA(3,I1,J,K1,L,1,N) = (1., 0.)
            CA(4,I1,J,K1,L,1,N) = (1., 0.)
            CA(5,I1,J,K1,L,1,N) = (1., 0.)
            CA(1,I1,J,K1,L,2,N) = (1., 0.)
            CA(2,I1,J,K1,L,2,N) = (1., 0.)
            CA(3,I1,J,K1,L,2,N) = (1., 0.)
            CA(4,I1,J,K1,L,2,N) = (1., 0.)
            CA(5,I1,J,K1,L,2,N) = (1., 0.)
            CA(1,I1,J,K1,L,3,N) = (1., 0.)
            CA(2,I1,J,K1,L,3,N) = (1., 0.)
            CA(3,I1,J,K1,L,3,N) = (1., 0.)
            CA(4,I1,J,K1,L,3,N) = (1., 0.)
            CA(5,I1,J,K1,L,3,N) = (1., 0.)
            CA(1,I1,J,K1,L,4,N) = (1., 0.)
            CA(2,I1,J,K1,L,4,N) = (1., 0.)
            CA(3,I1,J,K1,L,4,N) = (1., 0.)
            CA(4,I1,J,K1,L,4,N) = (1., 0.)
            CA(5,I1,J,K1,L,4,N) = (1., 0.)
            CB(1,I1,J,K1,L,1,N) = (1., 0.)
            CB(2,I1,J,K1,L,1,N) = (1., 0.)
            CB(3,I1,J,K1,L,1,N) = (1., 0.)
            CB(4,I1,J,K1,L,1,N) = (1., 0.)
            CB(5,I1,J,K1,L,1,N) = (1., 0.)
            CB(1,I1,J,K1,L,2,N) = (1., 0.)
            CB(2,I1,J,K1,L,2,N) = (1., 0.)
            CB(3,I1,J,K1,L,2,N) = (1., 0.)
            CB(4,I1,J,K1,L,2,N) = (1., 0.)
            CB(5,I1,J,K1,L,2,N) = (1., 0.)
            CB(1,I1,J,K1,L,3,N) = (1., 0.)
            CB(2,I1,J,K1,L,3,N) = (1., 0.)
            CB(3,I1,J,K1,L,3,N) = (1., 0.)
            CB(4,I1,J,K1,L,3,N) = (1., 0.)
            CB(5,I1,J,K1,L,3,N) = (1., 0.)
            CB(1,I1,J,K1,L,4,N) = (1., 0.)
            CB(2,I1,J,K1,L,4,N) = (1., 0.)
            CB(3,I1,J,K1,L,4,N) = (1., 0.)
            CB(4,I1,J,K1,L,4,N) = (1., 0.)
            CB(5,I1,J,K1,L,4,N) = (1., 0.)
            RA(1,I1,J,K1,L,1,N) = 1.
            RA(2,I1,J,K1,L,1,N) = 1.
            RA(3,I1,J,K1,L,1,N) = 1.
            RA(4,I1,J,K1,L,1,N) = 1.
            RA(5,I1,J,K1,L,1,N) = 1.
            RA(1,I1,J,K1,L,2,N) = 1.
            RA(2,I1,J,K1,L,2,N) = 1.
            RA(3,I1,J,K1,L,2,N) = 1.
            RA(4,I1,J,K1,L,2,N) = 1.
            RA(5,I1,J,K1,L,2,N) = 1.
            RA(1,I1,J,K1,L,3,N) = 1.
            RA(2,I1,J,K1,L,3,N) = 1.
            RA(3,I1,J,K1,L,3,N) = 1.
            RA(4,I1,J,K1,L,3,N) = 1.
            RA(5,I1,J,K1,L,3,N) = 1.
            RA(1,I1,J,K1,L,4,N) = 1.
            RA(2,I1,J,K1,L,4,N) = 1.
            RA(3,I1,J,K1,L,4,N) = 1.
            RA(4,I1,J,K1,L,4,N) = 1.
            RA(5,I1,J,K1,L,4,N) = 1.
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K1=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K1,L,5,N) = (1., 0.)
            CA(2,I1,J,K1,L,5,N) = (1., 0.)
            CA(3,I1,J,K1,L,5,N) = (1., 0.)
            CA(4,I1,J,K1,L,5,N) = (1., 0.)
            CA(5,I1,J,K1,L,5,N) = (1., 0.)
            CB(1,I1,J,K1,L,5,N) = (1., 0.)
            CB(2,I1,J,K1,L,5,N) = (1., 0.)
            CB(3,I1,J,K1,L,5,N) = (1., 0.)
            CB(4,I1,J,K1,L,5,N) = (1., 0.)
            CB(5,I1,J,K1,L,5,N) = (1., 0.)
            RA(1,I1,J,K1,L,5,N) = 1.
            RA(2,I1,J,K1,L,5,N) = 1.
            RA(3,I1,J,K1,L,5,N) = 1.
            RA(4,I1,J,K1,L,5,N) = 1.
            RA(5,I1,J,K1,L,5,N) = 1.
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
         DO K1=1,5
          DO J=1,5
           DO I1=1,5

            CC3 = 1. + CB(1,I1,J,K1,L,1,N)
            CC4 = 1. + CB(2,I1,J,K1,L,1,N)
            CC5 = 1. + CB(3,I1,J,K1,L,1,N)
            CC6 = 1. + CB(4,I1,J,K1,L,1,N)
            CC1 = 1. + CB(5,I1,J,K1,L,1,N)
            CA(1,I1,J,K1,L,1,N) = CC3 + RA(1,I1,J,K1,L,1,N)
            CA(2,I1,J,K1,L,1,N) = CC4 + RA(2,I1,J,K1,L,1,N)
            CA(3,I1,J,K1,L,1,N) = CC5 + RA(3,I1,J,K1,L,1,N)
            CA(4,I1,J,K1,L,1,N) = CC6 + RA(4,I1,J,K1,L,1,N)
            CA(5,I1,J,K1,L,1,N) = CC1 + RA(5,I1,J,K1,L,1,N)
            CC3 = 1. + CB(1,I1,J,K1,L,2,N)
            CC4 = 1. + CB(2,I1,J,K1,L,2,N)
            CC5 = 1. + CB(3,I1,J,K1,L,2,N)
            CC6 = 1. + CB(4,I1,J,K1,L,2,N)
            CC1 = 1. + CB(5,I1,J,K1,L,2,N)
            CA(1,I1,J,K1,L,2,N) = CC3 + RA(1,I1,J,K1,L,2,N)
            CA(2,I1,J,K1,L,2,N) = CC4 + RA(2,I1,J,K1,L,2,N)
            CA(3,I1,J,K1,L,2,N) = CC5 + RA(3,I1,J,K1,L,2,N)
            CA(4,I1,J,K1,L,2,N) = CC6 + RA(4,I1,J,K1,L,2,N)
            CA(5,I1,J,K1,L,2,N) = CC1 + RA(5,I1,J,K1,L,2,N)
            CC3 = 1. + CB(1,I1,J,K1,L,3,N)
            CC4 = 1. + CB(2,I1,J,K1,L,3,N)
            CC5 = 1. + CB(3,I1,J,K1,L,3,N)
            CC6 = 1. + CB(4,I1,J,K1,L,3,N)
            CC1 = 1. + CB(5,I1,J,K1,L,3,N)
            CA(1,I1,J,K1,L,3,N) = CC3 + RA(1,I1,J,K1,L,3,N)
            CA(2,I1,J,K1,L,3,N) = CC4 + RA(2,I1,J,K1,L,3,N)
            CA(3,I1,J,K1,L,3,N) = CC5 + RA(3,I1,J,K1,L,3,N)
            CA(4,I1,J,K1,L,3,N) = CC6 + RA(4,I1,J,K1,L,3,N)
            CA(5,I1,J,K1,L,3,N) = CC1 + RA(5,I1,J,K1,L,3,N)
            CC3 = 1. + CB(1,I1,J,K1,L,4,N)
            CC4 = 1. + CB(2,I1,J,K1,L,4,N)
            CC5 = 1. + CB(3,I1,J,K1,L,4,N)
            CC6 = 1. + CB(4,I1,J,K1,L,4,N)
            CC1 = 1. + CB(5,I1,J,K1,L,4,N)
            CA(1,I1,J,K1,L,4,N) = CC3 + RA(1,I1,J,K1,L,4,N)
            CA(2,I1,J,K1,L,4,N) = CC4 + RA(2,I1,J,K1,L,4,N)
            CA(3,I1,J,K1,L,4,N) = CC5 + RA(3,I1,J,K1,L,4,N)
            CA(4,I1,J,K1,L,4,N) = CC6 + RA(4,I1,J,K1,L,4,N)
            CA(5,I1,J,K1,L,4,N) = CC1 + RA(5,I1,J,K1,L,4,N)
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K1=1,5
          DO J=1,5
           DO I1=1,5
            CC7 = 1. + CB(1,I1,J,K1,L,5,N)
            CC8 = 1. + CB(2,I1,J,K1,L,5,N)
            CC9 = 1. + CB(3,I1,J,K1,L,5,N)
            CC10 = 1. + CB(4,I1,J,K1,L,5,N)
            CC2 = 1. + CB(5,I1,J,K1,L,5,N)
            CA(1,I1,J,K1,L,5,N) = CC7 + RA(1,I1,J,K1,L,5,N)
            CA(2,I1,J,K1,L,5,N) = CC8 + RA(2,I1,J,K1,L,5,N)
            CA(3,I1,J,K1,L,5,N) = CC9 + RA(3,I1,J,K1,L,5,N)
            CA(4,I1,J,K1,L,5,N) = CC10 + RA(4,I1,J,K1,L,5,N)
            CA(5,I1,J,K1,L,5,N) = CC2 + RA(5,I1,J,K1,L,5,N)
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       K = 6

       WRITE (6, *) 'K=', K
       WRITE (6, *) 'CA=', (CA(I,I,I,I,I,I,I), I=1,5)
       WRITE (6, *) 'CA=', (CA(I,I,I,I,I,I,I), I=1,5)
       STOP 
      END
