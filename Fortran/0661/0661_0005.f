      DIMENSION L1(10),L4(10),I1(10),I2(10)
      LOGICAL*1 L1
      LOGICAL*4 L4
      I1=1
      I2=I1
      L4=I1.EQ.I2.OR .I1.EQ.I2
      L1=I1.EQ.I2.AND.I1.EQ.I2
      PRINT *,'PASS'
      END
