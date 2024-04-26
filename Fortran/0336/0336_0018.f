      INTEGER*2 vX/66/
      DO 4500 k=1,10
          vX=k
          IF (min(k,1).EQ.0) J=1
 4500 CONTINUE

      write(6,*) vX
      END
