      DIMENSION G1(10),G2(10),G3(10),M1(10)
      DATA  G1,G2,G3/10*2.0,10*3.0,10*4.0/
      DATA  M1/5*1,5*0/
      DIMENSION A(10,10),B(10,10),C(10,10)
      DATA  A,B,C/100*5.0,100*6.0,100*7.0/
      DO 100 J=1,10
        DO 10 I=1,10
          G1(I) = A(I,J) + B(I,J)
   10   CONTINUE
        DO 20 I=1,10
          C(I,J) = G2(I) * A(I,J)
   20   CONTINUE
        DO 30 I=1,10
          IF(M1(I) .EQ. 0) THEN
            A(I,J) = B(I,J) + C(I,J)
          ELSE
            A(I,J) = B(I,J) * C(I,J)
          ENDIF
   30   CONTINUE
        DO 40 I=1,10
            G3(I) = A(I,J) - B(I,J)
            C(I,J) = G3(I) + C(I,J)
   40   CONTINUE
  100 CONTINUE
      WRITE(6,*) G1,G2,G3
      STOP
      END
