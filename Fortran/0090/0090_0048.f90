      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)
      JJ=C(3)
      KK=C(7)

      C(2:6)=C(2:6)+D(2:6)
      D(JJ:KK)=D(3:7)+C(J:K)

      PRINT *,C
      PRINT *,D

      END
