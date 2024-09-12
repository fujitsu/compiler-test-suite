      DIMENSION A(10),B(10),C(10)
    1 ASSIGN 100 TO J
      A(1)=2.0
      GO TO J
    2 ASSIGN 200 TO J
      A(2)=2.8
      GO TO J
    3 ASSIGN 300 TO J
   99 GO TO J,(100,200,300)
  100 DO 10 II=1,10
      A(II)=1.0
   10 CONTINUE
      GO TO 2
  200 DO 20 II=1,10
      B(II)=REAL(II)
   20 CONTINUE
      GO TO 3
  300 DO 30 II=1,10
      C(II)=SQRT(REAL(II))
   30 CONTINUE
      PRINT *,A,B,C
      STOP
      END
