      DIMENSION G1(10),G2(10),M1(10)
      DATA  G1,G2/10*2.0,10*3.0/
      DATA  M1/5*1,5*0/
      DIMENSION A(10,10)
      DATA  A/100*5.0/
      DO 100 J=1,10
        DO 30 I=1,10
          IF(M1(I) .EQ. 0) THEN
            G1(I) = G2(I) + A(I,J)
          ELSE
            G1(I) = G2(I) * A(I,J)
          ENDIF
   30   CONTINUE
  100 CONTINUE
      WRITE(6,*) G1
      STOP
      END
