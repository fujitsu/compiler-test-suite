      DIMENSION  A(10),B(10,10),C(10,10)
      DATA  A,B,N/10*1.0,50*1.0,50*20.0,10/
      DO 20 I=1,N
        DO 10 J=1,N
          A(J) = B(I,J) + 1.0
          IF(B(I,J) .GT. 10.0)  THEN
            A(J) = 10.0
          ENDIF
          C(I,J) = A(J) + B(I,J)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A,C
      STOP
      END
