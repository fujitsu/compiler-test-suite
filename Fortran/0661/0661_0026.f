      CALL AAA
      CALL BBB
      WRITE(6,*) '*****PASS*****'
      STOP
      END
      SUBROUTINE AAA
      REAL*4 A(100),B(100),C(100)
      B=100
      C=-100
      A=B+C
      PRINT *,'SUB AAA END'
      END
      SUBROUTINE BBB
      REAL*4 A(100),B(100),C(100)
      B=100
      C=-100
      A=B+C
      PRINT *,'SUB BBB END'
      END
