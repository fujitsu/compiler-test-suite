      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)
      JJ=C(3)
      KK=C(7)

      C(4:8)=C(5:9)+D(JJ:KK)
      D(2:6)=D(2:6)+C(J:K)

      PRINT *,C
      PRINT *,D

      END
