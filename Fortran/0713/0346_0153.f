      DIMENSION  A(10),B(10),C(10),D(10),E(10),F(10)
      DATA  A,B,C,D,E,F/10*1.0,10*4.0,10*2.0,10*8.0,10*4.0,5*6.0,5*0.0/
      DATA  N/10/
      DO 10 I=1,N
        IF(F(I) .EQ. 0.0) THEN
          A(I) = B(I) + C(I) + D(I) + E(I)
        ELSE
          A(I) = (B(I) / C(I)) * (D(I) / E(I))
        ENDIF
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
