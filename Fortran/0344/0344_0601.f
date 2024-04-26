      REAL*4 A(20),B(20),C(20)
      LOGICAL*4 L(20),LX(20),LY(20),LZ(20)
      DATA L/20*.FALSE./
      DATA LX/20*.FALSE./,LY/20*.FALSE./,LZ/20*.FALSE./
      LOGICAL*4 L1,L2,L3,L4,L5
      DATA L1/.FALSE./,L2/.FALSE./,L3/.FALSE./,L4/.FALSE./
      DATA L5/.FALSE./

      DO 11 I=1,20
        A(I)=3.
        B(I)=FLOAT(I)
        C(I)=FLOAT(21-I)
  11  CONTINUE
      DO 12 I=1,20,2
        L(I)=.TRUE.
        LX(I+1)=.TRUE.
        LY(I)=.TRUE.
  12  CONTINUE

      DO 10 I=1,20
        L1=L(I)
        IF (B(I).GT.C(I)) THEN
          L2=L1.AND.LX(I)
        ELSE
          L2=L1.OR.LY(I)
        ENDIF
        LZ(I)=L2
  10  CONTINUE
      WRITE(6,*) ' ITEM-1= ',LZ

      DO 20 I=1,20
        L1=L(I)
        IF (B(I).GT.C(I)) THEN
          L2=L1.AND. (A(I).EQ.MOD(I,3))
        ELSE
          L2=L1.OR.LY(I)
        ENDIF
        LZ(I)=L2
  20  CONTINUE
      WRITE(6,*) ' ITEM-2= ',LZ

      DO 30 I=1,20
        L1=C(I).GT.FLOAT(I)
        IF (B(I).GT.C(I)) THEN
          L2=L1.AND.LX(I)
        ELSE
          L2=LY(I)
        ENDIF
        LZ(I)=L2
  30  CONTINUE
      WRITE(6,*) ' ITEM-3= ',LZ

      DO 40 I=1,20
        L1=L(I)
        IF (B(I).GT.C(I)) THEN
          L2=L1.AND.LX(I)
        ELSE
          L2=L1 .OR.  A(I).GT.I
        ENDIF
        LZ(I)=L2
  40  CONTINUE
      WRITE(6,*) ' ITEM-4= ',LZ

      DO 50 I=1,20
        L1=A(I).GT.C(I)
        IF (B(I).GT.C(I)) THEN
          L5=L1.AND.LX(I)
        ELSE
          L5=A(I).EQ.MOD(I,3)
        ENDIF
        LZ(I)=L5
  50  CONTINUE
      WRITE(6,*) ' ITEM-5= ',LZ

      DO 60 I=1,20
        L3=A(I).GT.B(I)
        IF (L(I)) THEN
          L4=L3.AND. (C(I).LT.B(I))
        ELSE
          L4=B(I).LE.FLOAT(I)
        ENDIF
        LZ(I)=L4
  60  CONTINUE
      WRITE(6,*) ' ITEM-6= ',LZ
      STOP
      END
