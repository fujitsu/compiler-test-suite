      DIMENSION A(10),B(10),C(10)
      DIMENSION M(10)
      DATA  A,B,C/10*1.0,10*2.0,10*3.0/
      DATA  M/5*1,5*0/
      DO 10 I=1,10
        IF(M(I) .EQ. 0) THEN
          A(I) = B(I) + C(I)
        ELSE
          B(I) = A(I) + C(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) A,B
      STOP
      END
