      PROGRAM MAIN
       REAL R10(10,3,3,3), R11(10,3,3,3,3), R12(10,3,3,3,3,3)
       INTEGER I1
       REAL RR4, RR3, RR2, RR1

       WRITE (6, *) '----- TEST NO.1 -----'
C$OMP PARALLEL SHARED (R10,R11,R12,RS10) PRIVATE (RR1,RR2,RR3,RR4,I1,K,J
C$OMP& ,L,M)
C$OMP DO LASTPRIVATE (RS10)
       DO I1=1,6,5
        DO K=1,3
         DO J=1,3
          RR1 = I1 + J + K
          RR2 = I1 + J + K + 1
          RR3 = I1 + J + K + 2
          RR4 = I1 + J + K + 3
          RS10 = I1 + J + K + 4
          DO L=1,3
           R10(I1,J,K,L) = RR1
           R10(I1+1,J,K,L) = RR2
           R10(I1+2,J,K,L) = RR3
           R10(I1+3,J,K,L) = RR4
           R10(I1+4,J,K,L) = RS10
           DO M=1,3
            R11(I1,J,K,L,M) = RR1
            R11(I1+1,J,K,L,M) = RR2
            R11(I1+2,J,K,L,M) = RR3
            R11(I1+3,J,K,L,M) = RR4
            R11(I1+4,J,K,L,M) = RS10
            R12(I1,J,K,L,M,1) = RR1
            R12(I1,J,K,L,M,2) = RR1
            R12(I1,J,K,L,M,3) = RR1
            R12(I1+1,J,K,L,M,1) = RR2
            R12(I1+1,J,K,L,M,2) = RR2
            R12(I1+1,J,K,L,M,3) = RR2
            R12(I1+2,J,K,L,M,1) = RR3
            R12(I1+2,J,K,L,M,2) = RR3
            R12(I1+2,J,K,L,M,3) = RR3
            R12(I1+3,J,K,L,M,1) = RR4
            R12(I1+3,J,K,L,M,2) = RR4
            R12(I1+3,J,K,L,M,3) = RR4
            R12(I1+4,J,K,L,M,1) = RS10
            R12(I1+4,J,K,L,M,2) = RS10
            R12(I1+4,J,K,L,M,3) = RS10
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11

       WRITE (6, *) ' RS10 = ', RS10

       WRITE (6, *) ' R10  = ', (R10(I,1,2,1), I=1,10)
       WRITE (6, *) ' R11  = ', (R11(I,1,2,3,1), I=1,10)
       WRITE (6, *) ' R12  = ', (R12(I,3,1,2,3,1), I=1,10)

       STOP 
      END
