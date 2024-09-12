      DIMENSION  A(10),B(10),C(10,10),IA(10,10)
      DATA  A,B,C/10*1.0,10*4.0,100*2.0/
      DATA  IA/50*1,50*0/
      DATA  N/10/
      DO 10 J=1,N
        DO 10 I=1,N
          IF(IA(I,J) .EQ. 0) THEN
            A(I) = B(I) + C(I,J)
          ELSE
            A(I) = B(I) * C(I,J)
          ENDIF
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
