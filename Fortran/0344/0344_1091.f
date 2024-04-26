      INTEGER A(256),B(256,256),SUM/0/
      DO 10 I=1,256
         A(I) = I
         SUM  = SUM + A(I)
         A(I) = A(I) + 1
         SUM  = SUM + A(I)
         DO 10 J=1,I
            B(I,J) = A(I)
            SUM    = SUM + B(I,J)
            B(I,J) = B(I,J) / A(I)
            SUM    = SUM + B(I,J)
   10 CONTINUE
      WRITE(6,*) SUM
      STOP
      END
