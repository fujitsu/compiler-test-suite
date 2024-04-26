      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      INTEGER*2 IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*3/
      LOGICAL*1 LA(10)/10*1/,LB(10)/10*0/,LC(10)/10*1/
      CHARACTER*4 CA(10)
      DO 1 I=1,10
       A(I)=B(I)+C(I)
1      IA(I)=IB(I)+IC(I)
      DO 2 I=1,10
       CA(I)='OKOK'
       LA(I)=LB(I).AND.LC(I)
2      IB(I)=IA(I)*IC(I)
      DO 3 I=1,10
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
       WRITE(6,*) ISA,ISB,ISC,SA,SB,SC,LA(1),CA(1)
      STOP
      END
