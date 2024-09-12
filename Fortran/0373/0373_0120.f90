      PROGRAM MAIN
      PARAMETER (N=10)
      REAL A(N),B(N)
      REAL RES_MAX(N),RES_MIN(N)
      DATA A/2*5.0,2*6.0,2*4.0,2*1.0,2*2.0/
      DATA B/3*10.0,3*3.0,4*1.0/

      DO 10 I=1,N
         RES_MAX(I)=MAX(A(I),B(I),2.0)
         RES_MIN(I)=MIN(B(I),A(I),4.0)
 10   CONTINUE

      PRINT *,'MAX=',RES_MAX
      PRINT *,'MIN=',RES_MIN
      STOP
      END
