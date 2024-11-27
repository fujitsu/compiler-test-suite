      REAL(8)  RDA(3,2)
      REAL(8)  RDA1(3,0)
      REAL(8)  RDA2(0,2)
      RDA = 11.0_8
      RDA = MATMUL(RDA1,RDA2)
      if (any(abs(RDA)>0.000001))print *,'error'
      print *,'pass'
      end
