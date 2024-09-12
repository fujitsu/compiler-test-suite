      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5), RB(5,5,5,5), RC(5,5,5)
       INTEGER*4 H
       INTEGER II2, II1, I1
       COMPLEX CC15, CC14, CC13, CC12, CC11, CC10, CC9, CC8, CC7, CC6, 
     X   CC5, CC4, CC3, CC2, CC1
C$OMP PARALLEL SHARED (CA,CB,M,RA) PRIVATE (N,L,K,J,I1,H,II1,II2,CC1,CC2
C$OMP& ,CC3,CC4,CC5,CC6,CC7,CC8,CC9,CC10,CC11,CC12,CC13,CC14,CC15)
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
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5
        DO J=1,5
         DO II2=1,5
          DO L=1,5,2

           DO K=1,5
            CA(1,J,K,L,II2,N,1) = 1. + CB(1,1,J,K,L,II2,N)
            CA(2,J,K,L,II2,N,1) = 1. + CB(1,2,J,K,L,II2,N)
            CA(3,J,K,L,II2,N,1) = 1. + CB(1,3,J,K,L,II2,N)
            CA(4,J,K,L,II2,N,1) = 1. + CB(1,4,J,K,L,II2,N)
            CA(5,J,K,L,II2,N,1) = 1. + CB(1,5,J,K,L,II2,N)
            CA(1,J,K,L,II2,N,2) = 1. + CB(2,1,J,K,L,II2,N)
            CA(2,J,K,L,II2,N,2) = 1. + CB(2,2,J,K,L,II2,N)
            CA(3,J,K,L,II2,N,2) = 1. + CB(2,3,J,K,L,II2,N)
            CA(4,J,K,L,II2,N,2) = 1. + CB(2,4,J,K,L,II2,N)
            CA(5,J,K,L,II2,N,2) = 1. + CB(2,5,J,K,L,II2,N)
            CA(1,J,K,L,II2,N,3) = 1. + CB(3,1,J,K,L,II2,N)
            CA(2,J,K,L,II2,N,3) = 1. + CB(3,2,J,K,L,II2,N)
            CA(3,J,K,L,II2,N,3) = 1. + CB(3,3,J,K,L,II2,N)
            CA(4,J,K,L,II2,N,3) = 1. + CB(3,4,J,K,L,II2,N)
            CA(5,J,K,L,II2,N,3) = 1. + CB(3,5,J,K,L,II2,N)
            CA(1,J,K,L,II2,N,4) = 1. + CB(4,1,J,K,L,II2,N)
            CA(2,J,K,L,II2,N,4) = 1. + CB(4,2,J,K,L,II2,N)
            CA(3,J,K,L,II2,N,4) = 1. + CB(4,3,J,K,L,II2,N)
            CA(4,J,K,L,II2,N,4) = 1. + CB(4,4,J,K,L,II2,N)
            CA(5,J,K,L,II2,N,4) = 1. + CB(4,5,J,K,L,II2,N)
            CA(1,J,K,L,II2,N,5) = 1. + CB(5,1,J,K,L,II2,N)
            CA(2,J,K,L,II2,N,5) = 1. + CB(5,2,J,K,L,II2,N)
            CA(3,J,K,L,II2,N,5) = 1. + CB(5,3,J,K,L,II2,N)
            CA(4,J,K,L,II2,N,5) = 1. + CB(5,4,J,K,L,II2,N)
            CA(5,J,K,L,II2,N,5) = 1. + CB(5,5,J,K,L,II2,N)
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO N=1,5

        DO K=1,5
         DO I1=1,5
          DO H=1,5
           DO J=1,5
            CC6 = 1. + CB(H,I1,J,K,1,1,N)
            CC7 = 1. + CB(H,I1,J,K,3,1,N)
            CC2 = 1. + CB(H,I1,J,K,5,1,N)
            CC8 = 1. + CB(H,I1,J,K,1,2,N)
            CC9 = 1. + CB(H,I1,J,K,3,2,N)
            CC3 = 1. + CB(H,I1,J,K,5,2,N)
            CC10 = 1. + CB(H,I1,J,K,1,3,N)
            CC11 = 1. + CB(H,I1,J,K,3,3,N)
            CC4 = 1. + CB(H,I1,J,K,5,3,N)
            CC12 = 1. + CB(H,I1,J,K,1,4,N)
            CC13 = 1. + CB(H,I1,J,K,3,4,N)
            CC5 = 1. + CB(H,I1,J,K,5,4,N)
            CC14 = 1. + CB(H,I1,J,K,1,5,N)
            CC15 = 1. + CB(H,I1,J,K,3,5,N)
            CC1 = 1. + CB(H,I1,J,K,5,5,N)
            RA(1,1,N) = CC6 + H
            RA(3,1,N) = CC7 + H
            RA(5,1,N) = CC2 + H
            RA(1,2,N) = CC8 + H
            RA(3,2,N) = CC9 + H
            RA(5,2,N) = CC3 + H
            RA(1,3,N) = CC10 + H
            RA(3,3,N) = CC11 + H
            RA(5,3,N) = CC4 + H
            RA(1,4,N) = CC12 + H
            RA(3,4,N) = CC13 + H
            RA(5,4,N) = CC5 + H
            RA(1,5,N) = CC14 + H
            RA(3,5,N) = CC15 + H
            RA(5,5,N) = CC1 + H
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
