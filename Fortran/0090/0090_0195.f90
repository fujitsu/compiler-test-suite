      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)
      JJ=C(2)
      KK=C(6)
      JJJ=C(4)
      KKK=C(8)

      C(2:6)=C(J:K)+D(JJJ:KKK)
      D(2:6)=D(2:6)+C(JJ:KK)

      PRINT *,C
      PRINT *,D

      END
