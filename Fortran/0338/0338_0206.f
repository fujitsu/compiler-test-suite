      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      INTEGER IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*3/
      DO 1 I=3,10
       A(I)=B(I)+C(I)+A(I-2)
1      IA(I)=IB(I)+IC(I)
      DO 2 I=3,10
       B(I)=A(I)*C(I)
2      IB(I)=IA(I)*IC(I)+IB(I-2)
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
