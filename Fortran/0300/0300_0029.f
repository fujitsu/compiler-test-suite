      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      REAL*8      H(100,100),O(100,100)
      INTEGER     HH(100,100),OO(100,100)
      REAL        P(100,100),Q(100,100)
      COMPLEX*16  V(100,100),W(100,100)
      COMPLEX     VV(100,100),WW(100,100)
      COMPLEX     X(100,100),Y(100,100)
      REAL        CONDR
      COMPLEX     CONDC
      CONDR=0
      H=0
      P=0
      O=0
      Q=0
      DO 40 I2=10,90
      DO 40 I1=10,90
        IF(I1.GT.5.OR.Q(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        Q(I1,I2)=EXP(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=SQRT(O(I1,I2))+P(I1,I2)
        ELSE
        Q(I1,I2)=COS(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=COS(O(I1,I2))+P(I1,I2)
        ENDIF
        IF(I1.GT.5.OR.Q(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I2.GT.5.OR.P(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I1.GT.5.OR.O(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I2.GT.5.OR.H(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I1.GT.5.OR.Q(I1,I2).LT.30.0.AND.CONDR.EQ.1.0)THEN
        IF(I2.GT.5.OR.Q(I1,I2).LT.40.0.AND.CONDR.EQ.1.0)THEN
        Q(I1,I2)=COS(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=O(I1,I2)+SIN(P(I1,I2))
        ELSE
        Q(I1,I2)=LOG(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=LOG(O(I1,I2))+P(I1,I2)
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   40 CONTINUE
      WRITE(6,*)((Q(I1,I2),I1=20,100,20),I2=20,100,20)
      END
