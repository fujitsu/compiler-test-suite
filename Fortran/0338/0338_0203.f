      REAL A(10)/10*1/,B(10)/10*2/
      REAL*8 DA(10)/10*1/,DB(10)/10*2/,SDA
      INTEGER IA(10)/10*1/,IB(10)/10*2/
      DO 1 I=1,10
       A(1)=MAX(B(I),A(1))
       DA(1)=MIN(DB(I),DA(1))
1      IA(1)=MAX(IB(I),IA(1))
      J=0
      JJ=0
      JJJ=0
      SA=0
      SDA=0
      ISA=0
      DO 2 I=1,10,2
       IF(SA.GT.A(I)) THEN
        SA=A(I)
        J=I
       ENDIF
       IF(SDA.GE.DA(I)) THEN
        SDA=DA(I)
        JJ=I
       ENDIF
       IF(ISA.LT.IA(I)) THEN
        ISA=IA(I)
        JJJ=I
       ENDIF
2      CONTINUE
       WRITE(6,*) A(1),DA(1),SA,SDA,ISA,J,JJ,JJJ
      STOP
      END
