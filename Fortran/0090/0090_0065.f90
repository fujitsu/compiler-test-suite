      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(2)
      K=C(6)

      C(2:6)=C(3:7)+D(2:6)
      D(J:K)=D(1:5)+C(2:6)

      PRINT *,C
      PRINT *,D

      END
