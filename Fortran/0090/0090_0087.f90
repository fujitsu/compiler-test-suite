      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)

      C(4:8)=C(4:8)+D(J:K)
      D(2:6)=D(2:6)+C(5:9)

      PRINT *,C
      PRINT *,D

      END
