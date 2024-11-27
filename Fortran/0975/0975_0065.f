      REAL B(5,5,5,3000)
      DATA B/375000*0/

      DO 100 I=1,5
         DO 60 J=1,5

            DO 90 L=1,3000
               DO 70 K=1,5
                  B(I,J,K,L) = 1
 70            CONTINUE
 90         CONTINUE

            DO 99 L=1,3000
               DO 77 K=1,5
                  B(I,J,K,L) = 2
 77            CONTINUE
 99         CONTINUE

 60      CONTINUE
 100  CONTINUE

      WRITE(6,*) B(1,1,1,1)
      END
