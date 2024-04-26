      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      INTEGER IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*3/
      I=0
      DO 1 WHILE(I.GT.5)
       I=I+1
       A(I)=B(I)+C(I)
1      IA(I)=IB(I)+IC(I)
      DO 2 I=1,10
       GOTO(2,20)I
20     B(I)=A(I)*C(I)
2      IB(I)=IA(I)*IC(I)
      DO 3 I=1,10
       IF(I.GT.50) PAUSE 1
       C(I)=B(I)*A(I)
3      IC(I)=IB(I)*IA(I)
      ISA=0
      ISB=0
      ISC=0
      SA=0
      SB=0
      SC=0
      DO 4 I=1,10
       ISA=ISA+IA(I)
       ISB=ISB+IB(I)
       ISC=ISC+IC(I)
       SA=SA+A(I)
       SB=SB+B(I)
4      SC=SC+C(I)
       WRITE(6,*) ISA,ISB,ISC,SA,SB,SC
      STOP
      END
