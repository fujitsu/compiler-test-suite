      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      INTEGER IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*2/
      DO 1 I=3,10
       A(I)=A(I-1)+C(I)
1      IA(I)=IA(I-2)+IC(I)
      DO 2 I=1,10
       B(IC(I))=B(IC(I))*C(IC(I))
2      IB(IA(I))=IB(IA(I))*IC(I)
      DO 3 I=1,10
       C(2)=0
       C(I)=C(2)*A(I)
3      IC(I)=IC(2)*IA(I)
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
