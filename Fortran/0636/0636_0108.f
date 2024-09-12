      PARAMETER (N=10)
      INTEGER IA(N),IB(N),M(N)
      REAL A(N,N)/100*0/,B(N)/N*0/,C(N)/N*0/
      LOGICAL L(N)
      DATA IA/N*1/,IB/N*5/,JJ/0/,KK/0/
      DATA L/5*.TRUE.,5*.FALSE./
      DO 100 I=1,N
       B(I)=REAL(I)+1.5
      DO 200 J=1,N
       M(J)=J
       IF(L(J)) C(M(J))=B(J)
       IF(C(J).GE.5.0) A(I,J)=10.0
  200 CONTINUE
  100 CONTINUE
      DO 300 II=1,5
        DO 10 I=1,N
          JJ=JJ+IA(1)
   10   CONTINUE
      S=1.0
        DO 20 I=1,N
          KK=KK+IB(9)
   20   CONTINUE
  300 CONTINUE
      PRINT *,JJ,KK,A,B,C
      STOP
      END
