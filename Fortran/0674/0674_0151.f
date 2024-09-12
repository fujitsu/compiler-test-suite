      COMMON  /BLK1/ A(20),B(20),C(20)
      COMMON  /BLK2/ INNN,IN1,IN2,IDMY,DZ(20)
      EQUIVALENCE (IDMY,ILIST)
      ZZZ=2.0
      NN=15
      IN1=1
      IN2=IN1+1

      DO 10 I=1,20
        A(I)=FLOAT(I)
        B(I)=22-FLOAT(I)
        C(I)=FLOAT(I)/2.0+1.0
        DZ(I)=FLOAT(I)
  10  CONTINUE

      DO 20 I=2,NN
       A(I)=A(I+1)-B(I)
       IN1=IN1+1
       C(IN1)=C(IN1-1)-A(I)
       DZ(IN1)=B(I)+A(I)
       B(I)=ZZZ+C(IN1-1)
  20  CONTINUE
      ZZZ=1.20
  30  CONTINUE
      A(1)=ZZZ
      DO 40 I=2,NN
       A(IN2)=A(IN2+1)+B(I)
       B(I)=ZZZ+C(I-1)
       IN2=IN2+1
  40  CONTINUE
      DZ(20)=1.20
  50  CONTINUE
      A(1)=DZ(1)-ZZZ
      WRITE(6,*) ' A=',A
      WRITE(6,*) ' B=',B
      WRITE(6,*) ' C=',C
      STOP
      END
