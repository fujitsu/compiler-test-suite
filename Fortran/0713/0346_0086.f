      DIMENSION  A(10,10),B(10,10),C(10,10),S(10)
      DATA  A,B,S,N/50*1.0,50*20.0,50*1.0,50*10.0,5*1.0,5*10.0,10/
      DO 20 I=1,N
        DO 10 J=1,N
          IF(S(J) .GT. 10.0)  THEN
            A(I,J) = 10.0
          ENDIF
          C(I,J) = A(I,J) + B(I,J)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A,C
      STOP
      END
