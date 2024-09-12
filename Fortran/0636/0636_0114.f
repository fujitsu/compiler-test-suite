      PARAMETER (N=10)
      INTEGER IA(N),IB(N),IC(N),ID(N),IE(N)
      DATA IA/N*1/,IB/N*2/,IC/N*3/,ID/N*4/,IE/N*5/
      DATA J,K,L,M,II,JJ/6*0/
      II=1
   99 GO TO (10,20,30,40,50),II
   10 DO 100 I=1,N
        J=J+IA(8)
  100 CONTINUE
      GO TO 1000
   20 DO 200 I=1,N
        K=K+IB(7)
  200 CONTINUE
      GO TO 1000
   30 DO 300 I=1,N
        L=L+IC(3)
  300 CONTINUE
      GO TO 1000
   40 DO 400 I=1,N
        M=M+ID(4)
  400 CONTINUE
      GO TO 1000
   50 DO 500 I=1,N
        JJ=JJ+IE(9)
  500 CONTINUE
 1000 IF(II.LT.5) THEN
        II=II+1
        GO TO 99
      ELSE
        PRINT *,J,K,L,M,JJ
      ENDIF
      STOP
      END
