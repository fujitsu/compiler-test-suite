      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)

      C(2:6)=C(3:7)+D(2:6)
      D(2:6)=D(2:6)+C(1:5)

      PRINT *,C
      PRINT *,D

      END
