      PARAMETER (N=10)
      COMPLEX*8 C1(N),C2(N),C3(N),C4(N),C5(N),C6(N)
      DATA C1/N*(1.0,5.3)/
      DO 10 I=1,N
       C2(I)=CMPLX(REAL(I))+C1(I)
       C3(I)=CSQRT(C1(I))
       C4(I)=CEXP(C3(I))
       C5(I)=CLOG(C4(I))
       C6(I)=CSIN(C1(I))
   10 CONTINUE
      PRINT *,C1,C2,C3,C4,C5,C6
      STOP
      END
