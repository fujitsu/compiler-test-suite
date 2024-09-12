      REAL*4  A(20,20),B(20,20),C(20,20),H(20,20)
      DATA   A,B,C/400*1.,400*2.,400*3./
      DATA   H/400*1.1/
      DATA   N/10/,LT/1/,LTD/2/

      DO 10 L=1,N
       IM= N-L+1
       NL=N+L
       DO 10 I=1,IM
        LL=LT+I
        H(NL,LL)=A(I,L)*B(I,L)
        LLD=LTD+I
        H(LLD-1,LL)=B(I,L)+C(I,L)
        H(LLD,LL)=C(I,L)-A(I,L)

        LL0=I+1
        H(LL0,LL)=B(I,L)*2.
        H(LL0-1,LL)=C(I,L)/2.0
        H(LL-1,LL)=A(I,L)/2.0*B(I,L)
  10  CONTINUE
      WRITE(6,*) H
      STOP
      END
