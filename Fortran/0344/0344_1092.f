      PARAMETER(N1=256,N2=256)
      INTEGER A(N1),B(N1,N2),SUM1/0/,SUM2/0/
      DO 10 I=1,N1
         A(I) = I
         SUM1  = SUM1 + A(I)
         A(I) = A(I) + 1
         SUM1  = SUM1 + A(I)
         DO 10 J=1,I
            B(I,J) = A(I)
            SUM2    = SUM2 + B(I,J)
            B(I,J) = B(I,J) / A(I)
            SUM2    = SUM2 + B(I,J)
   10 CONTINUE
      WRITE(6,*) SUM1,SUM2
      STOP
      END
