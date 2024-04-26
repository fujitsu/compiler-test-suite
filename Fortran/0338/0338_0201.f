      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*3/
      REAL*8 DA(10)/10*1/,DB(10)/10*2/,DC(10)/10*3/,DSA,DSB,DSC
      INTEGER IA(10)/10*1/,IB(10)/10*2/,IC(10)/10*3/
      INTEGER L(10)/1,2,3,4,5,6,7,8,9,10/
      DO 1 I=1,10
       A(I)=B(I)+C(I)
       DA(I)=DB(I)+DC(I)
1      IA(I)=IB(I)+IC(I)
      DO 2 I=1,10,2
       B(I)=A(I)*C(I)
       DB(I)=DA(I)*DC(I)
2      IB(I)=IA(I)*IC(I)
      DO 3 I=1,10
       C(L(I))=B(L(I))/A(L(I))
       DC(L(I))=DB(L(I))/DA(L(I))
3      IC(L(I))=IB(L(I))/IA(L(I))
      ISA=0
      ISB=0
      ISC=0
      SA=0
      SB=0
      SC=0
      DSA=0
      DSB=0
      DSC=0
      DO 4 I=1,10
       ISA=ISA+IA(I)
       ISB=ISB+IB(I)
       ISC=ISC+IC(I)
       DSA=DSA+DA(I)
       DSB=DSB+DB(I)
       DSC=DSC+DC(I)
       SA=SA+A(I)
       SB=SB+B(I)
4      SC=SC+C(I)
      IF (ISA.NE.50 .OR. ISB.NE.85 .OR. ISC.NE.15) PRINT *,'NG IS?'
      IF (ABS(SA-50.0000000)>1.0E-6) PRINT *,SA
      IF (ABS(SB-85.0000000)>1.0E-6) PRINT *,SB
      IF (ABS(SC-16.9999981)>2.0E-6) PRINT *,SC
      IF (ABS(DSA-50.0)>1.0E-15) PRINT *,DSA
      IF (ABS(DSB-85.0)>1.0E-15) PRINT *,DSB
      IF (ABS(DSC-17.0)>1.0E-15) PRINT *,DSC
      PRINT *,'*** OK ***'
      STOP
      END
