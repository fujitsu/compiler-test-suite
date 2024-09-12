      DIMENSION DIM(-9:9)
      PARAMETER (K=1,L=5)
      DO 10 I=L,K,-K
       DIM(I)=DIM(2*I-1)+DIM(-I+I*2)
       DATA DIM/19*1.0/
   10 CONTINUE
      DO 20 I=K,L,K+2*(K*2)-(L-K)
       PRINT *,I
       DIM(I)=DIM(2*I-I)+DIM(-I+I*2)
   20 CONTINUE
      M=1
      N=5
      DO 30 I=-K+(M*2),N
       DIM(I)=DIM(2*I-I)+DIM(-I+I*2)
   30 CONTINUE
      DO 40 I=-(M*2-K)+(M*2),N*2-L,-((M*K-2)+(M-K))
       DIM(I)=DIM(2*I-I)+DIM(-I+I*2)
   40 CONTINUE
      DO 50 I=-IFUN(10),-IFUN(50),-IFUN(N+L)
       DIM(I)=DIM(2*(-I)+I)+DIM(I-I*2)
   50 CONTINUE
      DO 60 I=IFUN(20)-IFUN(10),L,IFUN(10)*2-IFUN(10)
       DIM(I)=DIM(2*I-I)+DIM(-I+I*2)
   60 CONTINUE
      WRITE(6,100) DIM
  100 FORMAT(1H ,5E15.8)
      PRINT *,'PASS'
      END
      FUNCTION IFUN(I)
      IFUN=I/10
      RETURN
      END
