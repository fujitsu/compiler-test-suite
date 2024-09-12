      PROGRAM MAIN
      REAL*8 A(1000),B(1000),C(1000)
      REAL*8 AA(1000),BB(1000),CC(1000)
      REAL*8 AAA(1000),BBB(1000),CCC(1000)
      REAL*8 AAAA(1000),BBBB(1000),CCCC(1000)
      DO 10 I=1,1000
        A(I)=1.0
        AA(I)=1.0
        AAA(I)=1.0
        AAAA(I)=1.0
        B(I)=1.0
        BB(I)=1.0
        BBB(I)=1.0
        BBBB(I)=1.0
        C(I)=5.0
        CC(I)=5.0
        CCC(I)=5.0
        CCCC(I)=5.0
 10   CONTINUE
      DO 99 J=1,1000
      DO 100 I=1,999
        IF( I.GT.50 ) THEN
          A(I)=B(I)
          C(I)=B(I)+A(I+1)-I
          AA(I)=BB(I)
          CC(I)=BB(I)+AA(I+1)-I
          AAA(I)=BBB(I)
          CCC(I)=BBB(I)+AAA(I+1)-I
          AAAA(I)=BBBB(I)
          CCCC(I)=BBBB(I)+AAAA(I+1)-I
        ENDIF
  100 CONTINUE
   99 CONTINUE
      PRINT *,C(1),CC(1),CCC(1),CCCC(1)
      STOP
      END
