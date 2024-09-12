      PROGRAM MAIN
      INTEGER*4 IA1(10)
      REAL*8 DA3(10,10,10)

       data ia1/10*0/

       DO K=1,10
        DO J=1,10
         DO I=1,10
          DA3(I,J,K) = I + J - K
         END DO
        END DO
       END DO

       DO I=1,10
        DO J=1,10
          IA1(J) = 1
        END DO
        DO K=2,6,4
         DA3(2,I,K+1) = DA3(2,I,K-1)
         DA3(3,I,K+1) = DA3(3,I,K) + DA3(3,I,K-1)
         DA3(2,I,K+3) = DA3(2,I,K+1)
         DA3(3,I,K+3) = DA3(3,I,K+2) + DA3(3,I,K+1)
        END DO
       END DO

        write(6,*) '### IA1=', IA1
        write(6,*) '### DA3=', DA3 

       STOP
      END
