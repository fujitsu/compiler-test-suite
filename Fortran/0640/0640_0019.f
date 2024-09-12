      PROGRAM MAIN
      REAL A(-500:500),B(-490:500)
      DATA  N/1/
      DO 10 I=-500,500,N
       A(I)=I
  10  CONTINUE
      DO 20 I=-490,500,N
       B(I)=A(I)
  20  CONTINUE
      DO 30 I=500,-490,-N
       A(I)=B(I)**2
  30  CONTINUE
      DO 40 I=-490,-1,N+1
       A(I)=A(I+1)*2
  40  CONTINUE
      DO 50 I=100,1,N-2
       B(I)=A(I)/3
  50  CONTINUE
      WRITE(6,999) A,B
999   format(10g20.6)
      STOP
      END
