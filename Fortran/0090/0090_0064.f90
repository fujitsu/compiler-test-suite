      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)

      C(2:6)=C(3:7)+D(1:5)
      D(J:K)=D(3:7)+C(2:6)

      PRINT *,C
      PRINT *,D

      END