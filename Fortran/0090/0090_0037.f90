      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)

      C(2:6)=C(2:6)+D(2:6)
      D(1:5)=D(1:5)+C(3:7)

      PRINT *,C
      PRINT *,D

      END
