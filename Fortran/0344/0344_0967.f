      CHARACTER*1 A(100),B(100)
      DATA A/100*'A'/,B/100*'B'/,M/100/
      DO 10 I=1,M
         CALL SUB(A(I),B(I))
   10 CONTINUE
      WRITE(6,100) A,B
  100 FORMAT(20A2)
      STOP
      END
C
      SUBROUTINE SUB(A,B)
      CHARACTER*1 A,B
      A = 'B'
      B = 'A'
      RETURN
      END
