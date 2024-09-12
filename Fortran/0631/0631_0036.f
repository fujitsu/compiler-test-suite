      N100=0
      DO 10 I=1,100
        N100=N100+1
   10 CONTINUE
      CALL SUB1
      CALL SUB2(N100)
      CALL SUB3
      CALL SUB4(N100)
      END
      SUBROUTINE SUB1
      INTEGER    A1I(100), B1I(100), C1I(100)
      INTEGER    E1I(100), F1I(100), G1I(100)
      INTEGER    X1I,Y1I,Z1I
      DO 10 I=1,100
        A1I(I)=I
        B1I(I)=1
        C1I(I)=I
        E1I(I)=2
        F1I(I)=I
        G1I(I)=3
   10 CONTINUE
      DO 20 I=1,100
        IF(MOD(A1I(I),5).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   20 CONTINUE
      DO 30 I=1,100
        IF(MOD(A1I(I),6).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
   30 CONTINUE
      DO 40 I=1,100
        IF(MOD(A1I(I),5).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),6).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
        IF(MOD(A1I(I),2).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)*X1I
        ENDIF
        IF(MOD(A1I(I),30).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)
          C1I(I)=A1I(I)+B1I(I)/X1I
        ELSE
          G1I(I)=E1I(I)+F1I(I)
          X1I=E1I(I)+F1I(I)
          G1I(I)=E1I(I)+X1I
        ENDIF
   40 CONTINUE
      DO 50 I=1,100
        IF(MOD(A1I(I),105).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),100).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),105).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-X1I
        ENDIF
        IF(MOD(A1I(I),100).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   50 CONTINUE
      DO 60 I=1,90
        IF(MOD(X1I,2).NE.0) THEN
        IF(MOD(A1I(I+1),1).EQ.0) THEN
        IF(X1I.NE.2) THEN
        IF(MOD(A1I(I+3),3).NE.0) THEN
        IF(X1I.GT.-5) THEN
        IF(MOD(A1I(I+5),5).EQ.0) THEN
        IF(X1I.LT.12000) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-X1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          X1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-X1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   60 CONTINUE
      DO 70 I=1,100
        IF(MOD(A1I(I),105).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),100).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),105).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          Y1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-Y1I
        ENDIF
        IF(MOD(A1I(I),100).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   70 CONTINUE
      Z1I=3
      DO 80 I=1,90
        IF(MOD(Z1I,2).NE.0) THEN
        IF(MOD(A1I(I+1),1).EQ.0) THEN
        IF(Z1I.NE.2) THEN
        IF(MOD(A1I(I+3),3).NE.0) THEN
        IF(Z1I.GT.-5) THEN
        IF(MOD(A1I(I+5),5).EQ.0) THEN
        IF(Z1I.LT.12000) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-X1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          X1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-X1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   80 CONTINUE
      DO 90 I=1,90
        IF(MOD(A1I(I),2).EQ.0) THEN
        IF(MOD(A1I(I+1),1).EQ.0) THEN
        IF(MOD(A1I(I+2),2).EQ.0) THEN
        IF(MOD(A1I(I+3),3).EQ.0) THEN
        IF(MOD(A1I(I+4),4).EQ.0) THEN
        IF(MOD(A1I(I+5),5).EQ.0) THEN
        IF(MOD(A1I(I+6),6).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-X1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          X1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-X1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   90 CONTINUE
      WRITE(6,*) (C1I(I),I=10,100,10)
      WRITE(6,*) (G1I(I),I=10,100,10)
      END
      SUBROUTINE SUB2(N100)
      INTEGER    A1I(100), B1I(100), C1I(100)
      INTEGER    E1I(100), F1I(100), G1I(100)
      INTEGER    X1I,Y1I,Z1I,W1I
      INTEGER    N100
      DO 10 I=1,N100
        A1I(I)=I
        B1I(I)=1
        C1I(I)=I
        E1I(I)=2
        F1I(I)=I
        G1I(I)=3
   10 CONTINUE
      DO 20 I=1,N100
        IF(MOD(A1I(I),5).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   20 CONTINUE
      DO 30 I=1,N100
        IF(MOD(A1I(I),6).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
   30 CONTINUE
      DO 40 I=1,N100
        IF(MOD(A1I(I),5).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),6).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
        IF(MOD(A1I(I),2).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)*X1I
        ENDIF
        IF(MOD(A1I(I),30).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)
          C1I(I)=A1I(I)+B1I(I)/X1I
        ELSE
          G1I(I)=E1I(I)+F1I(I)
          X1I=E1I(I)+F1I(I)
          G1I(I)=E1I(I)+X1I
        ENDIF
   40 CONTINUE
      DO 50 I=1,N100
        IF(MOD(A1I(I),105).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),100).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(MOD(A1I(I),105).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-X1I
        ENDIF
        IF(MOD(A1I(I),100).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   50 CONTINUE
      Y1I=5
      DO 60 I=1,N100-10
        IF(MOD(Y1I,2).NE.0) THEN
        IF(MOD(A1I(I+1),1).EQ.0) THEN
        IF(Y1I.NE.2) THEN
        IF(MOD(A1I(I+3),3).NE.0) THEN
        IF(Y1I.GT.-5) THEN
        IF(MOD(A1I(I+5),5).EQ.0) THEN
        IF(Y1I.LT.12000) THEN
          C1I(I)=A1I(I)+B1I(I)
          Z1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-Z1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          Z1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-Z1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   60 CONTINUE
      Z1I=3
      DO 70 I=1,90
        IF(MOD(A1I(I),2).EQ.0) THEN
        IF(MOD(A1I(I+1),1).GT.1) THEN
        IF(MOD(A1I(I+2),2).GT.2) THEN
        IF(MOD(A1I(I+3),3).LT.120) THEN
        IF(MOD(A1I(I+4),4).LT.50) THEN
        IF(MOD(A1I(I+5),5).NE.10) THEN
        IF(MOD(A1I(I+6),6).NE.7) THEN
          C1I(I)=A1I(I)+B1I(I)
          W1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-W1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          W1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-Z1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   70 CONTINUE
      WRITE(6,*) (C1I(I),I=10,100,10)
      WRITE(6,*) (G1I(I),I=10,100,10)
      END
      SUBROUTINE SUB3
      COMPLEX*16 A1I(100), B1I(100), C1I(100)
      COMPLEX*16 E1I(100), F1I(100), G1I(100)
      COMPLEX*16 X1I,Y1I
      DO 10 I=1,100
        A1I(I)=DCMPLX(I)
        B1I(I)=DCMPLX(1)
        C1I(I)=DCMPLX(I)
        E1I(I)=DCMPLX(2)
        F1I(I)=DCMPLX(I)
        G1I(I)=DCMPLX(3)
   10 CONTINUE
      DO 20 I=1,100
        IF(MOD(INT(A1I(I)),5).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   20 CONTINUE
      DO 30 I=1,100
        IF(A1I(I).NE.(10.0,0.0)) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
   30 CONTINUE
      DO 40 I=1,100
        IF(ABS(A1I(I)).GT.10.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(ABS(A1I(I)).LT.10.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
        IF(A1I(I).NE.(10.0,0.0)) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)*X1I
        ENDIF
        IF(ABS(A1I(I)).LT.1000.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          X1I=C1I(I)
          C1I(I)=A1I(I)+B1I(I)-X1I
        ELSE
          G1I(I)=E1I(I)+F1I(I)
          X1I=E1I(I)+F1I(I)
          G1I(I)=E1I(I)+X1I
        ENDIF
   40 CONTINUE
      Y1I=(1.0,0.0)
      DO 60 I=1,90
        IF(MOD(INT(Y1I),2).NE.0) THEN
        IF(MOD(INT(A1I(I+1)),1).EQ.0) THEN
        IF(INT(Y1I).NE.2) THEN
        IF(MOD(INT(A1I(I+3)),3).NE.0) THEN
        IF(INT(Y1I).GT.-5) THEN
        IF(MOD(INT(A1I(I+5)),5).EQ.0) THEN
        IF(INT(Y1I).LT.12000) THEN
          C1I(I)=A1I(I)+B1I(I)
          Z1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-Z1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          Z1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-Z1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   60 CONTINUE
      WRITE(6,*) (C1I(I),I=10,100,10)
      WRITE(6,*) (G1I(I),I=10,100,10)
      END
      SUBROUTINE SUB4(N100)
      COMPLEX*16 A1I(100), B1I(100), C1I(100)
      COMPLEX*16 E1I(100), F1I(100), G1I(100)
      COMPLEX*16 X1I,Y1I
      X1I=(1.0,0.0)
      DO 10 I=1,N100
        A1I(I)=DCMPLX(I)
        B1I(I)=DCMPLX(1)
        C1I(I)=DCMPLX(I)
        E1I(I)=DCMPLX(2)
        F1I(I)=DCMPLX(I)
        G1I(I)=DCMPLX(3)
   10 CONTINUE
      DO 20 I=1,N100
        IF(MOD(INT(A1I(I)),5).EQ.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
   20 CONTINUE
      DO 30 I=1,N100
        IF(A1I(I).NE.(10.0,0.0)) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
   30 CONTINUE
      DO 40 I=1,N100
        IF(ABS(A1I(I)).GT.10.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ENDIF
        IF(ABS(A1I(I)).LT.10.0) THEN
          C1I(I)=A1I(I)+B1I(I)
        ELSE
          G1I(I)=E1I(I)+F1I(I)
        ENDIF
        IF(A1I(I).NE.(10.0,0.0)) THEN
          C1I(I)=A1I(I)+B1I(I)
          Y1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)*Y1I
        ENDIF
        IF(ABS(A1I(I)).LT.1000.0) THEN
          C1I(I)=A1I(I)+B1I(I)
          Y1I=C1I(I)
          C1I(I)=A1I(I)+B1I(I)*Y1I
        ELSE
          G1I(I)=E1I(I)+F1I(I)
          Y1I=E1I(I)+F1I(I)
          G1I(I)=E1I(I)+Y1I
        ENDIF
   40 CONTINUE
      DO 60 I=1,N100-10
        IF(MOD(INT(X1I),2).NE.0) THEN
        IF(MOD(INT(A1I(I+1)),1).EQ.0) THEN
        IF(INT(X1I).NE.2) THEN
        IF(MOD(INT(A1I(I+3)),3).NE.0) THEN
        IF(INT(X1I).GT.-5) THEN
        IF(MOD(INT(A1I(I+5)),5).EQ.0) THEN
        IF(INT(X1I).LT.12000) THEN
          C1I(I)=A1I(I)+B1I(I)
          Y1I=C1I(I)+B1I(I)
          C1I(I)=A1I(I)+B1I(I)-Y1I
        ELSE
          B1I(I)=1
        ENDIF
        ENDIF
        ELSE
          Y1I=G1I(I)+E1I(I)
          G1I(I)=E1I(I)+F1I(I)-Y1I
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   60 CONTINUE
      WRITE(6,*) (C1I(I),I=10,100,10)
      WRITE(6,*) (G1I(I),I=10,100,10)
      END
