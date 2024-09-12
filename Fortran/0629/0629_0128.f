      INTEGER B(100,256),SUM/0/
      DATA B/25600*0/

      DO 10 I=1,100
         SUM  = SUM + 1
         DO 10 J=1,I
            B(I,J) = I
            SUM    = SUM + I
            B(I,J) = B(I,J) / I
            SUM    = SUM + B(I,J)
   10 CONTINUE
      WRITE(6,*) SUM
      STOP
      END
