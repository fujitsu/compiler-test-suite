      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(3)
      K=C(7)

      C(2:6)=C(2:6)+D(2:6)
      D(J:K)=D(3:7)+C(1:5)

      PRINT *,C
      PRINT *,D

      END
