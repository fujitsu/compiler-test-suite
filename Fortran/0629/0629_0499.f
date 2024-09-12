       REAL*4 A(5,5,5,5,5)
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I=1,5
             A(I,J,K,L,N) = 1.
           END DO
          END DO
         END DO
        END DO
       END DO
       WRITE(6,*) 'A = ',(A(I,I,I,I,I),I=1,5)
       STOP 
      END
