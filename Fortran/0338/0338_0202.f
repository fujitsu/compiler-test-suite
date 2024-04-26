      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      REAL*8 DA(10)/10*1/,DB(10)/10*2/,DC(10)/10*3/,DSA,DSB,DSC
      INTEGER IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*3/
      ISA=0
      ISB=0
      ISC=0
      SA=0
      SB=0
      SC=0
      DSA=0
      DSB=0
      DSC=0
      DO 4 I=2,10
       ISA=ISA+IA(I)
       ISB=ISB+IB(I)
       ISC=ISC+IC(I)
       DSA=DSA+DA(I)
       DSB=DSB+DB(I)
       DSC=DSC+DC(I)
       SA=SA+A(I)
       SB=SB+B(I)
       SC=SC+C(I)
       A(1)=A(1)+A(I)
       B(1)=B(1)+B(I)
       C(1)=C(1)+C(I)
       DA(1)=DA(1)+DA(I)
       DB(1)=DB(1)+DB(I)
       DC(1)=DC(1)+DC(I)
       IA(1)=IA(1)+IA(I)
       IB(1)=IB(1)+IB(I)
       IC(1)=IC(1)+IC(I)
4      CONTINUE
       WRITE(6,*) ISA,ISB,ISC,SA,SB,SC,DSA,DSB,DSC
       WRITE(6,*) A(1),B(1),C(1),DA(1),DB(1),DC(1),IA(1),IB(1),IC(1)
      STOP
      END
