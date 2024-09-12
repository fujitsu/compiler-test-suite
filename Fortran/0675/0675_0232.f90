       REAL*4 A(10)/10*1/
       N=1
       DO 10 I=2,10
        A(N) = 1
        N = N + 1
        A(I) = log(FLOAT(N))
   10  CONTINUE
       WRITE(6,*) "A=",A
       END
