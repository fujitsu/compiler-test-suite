      REAL*4    R400A(10),R400B(10)
      DATA      R400A/10*1/
      DATA      R400B/3,3,5,2,3,5,2,5,6,7/
      N=9
      DO 10 I=1,N
        R400A(N)=R400B(1)
   10 CONTINUE
      WRITE(6,*) R400A
      STOP
      END
