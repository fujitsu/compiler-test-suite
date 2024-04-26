      FUNCTION SUM(A,B)
      DO 1 I=1,10
    1  A = A + B
      SUM = A
      RETURN
      END
      REAL A,B
      DATA A/1/,B/2/
      EXTERNAL SUM
      S = SUM(A,B)
      WRITE(6,*) S
      STOP
      END
