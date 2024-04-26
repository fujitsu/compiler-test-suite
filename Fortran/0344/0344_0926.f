      PARAMETER (LDA=100)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION A(LDA,LDA),D(LDA)
      DATA A/2000*1.,2000*3.,2000*4.,2000*5.,2000*2.1/
      DATA D/50*2.2,50*3.1/
      N=LDA-1
      S=0.0D0
      DO 80 J=1,N/2
      DO 80 I=1,N
      T=0.0D0
      DO 70 K=1,N
      T=DFLOAT(N+1-MAX0(I,K))*A(K,I)+T
   70 CONTINUE
      T=T-A(I,J)*D(J)
      S=DMAX1(DABS(T),S)
   80 CONTINUE
      WRITE(6,*) 'S= ',S
      STOP
      END
