      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)

      C(4:8)=C(3:7)+D(3:7)
      D(2:6)=D(3:7)+C(4:8)

      PRINT *,C
      PRINT *,D

      END
