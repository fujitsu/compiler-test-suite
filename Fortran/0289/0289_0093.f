      PROGRAM    MAIN
      DIMENSION  A(10),B(10),C(10)
      DO 1 I=1,10
      A(I)=1.0
      B(I)=2.0
      C(I)=3.0
    1 CONTINUE
      CALL RNKAE1(A,B,C)
      IF (C(2).NE.63.0) THEN
      WRITE(6,*) C(2),'*** NG-1 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-1 ***'
      CALL RNKAE2(A,10,Z)
      IF (Z.NE.3.0) THEN
      WRITE(6,*) Z,'*** NG-2 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-2 ***'
      CALL RNKAE3(A,B,10,Z)
      IF (Z.NE.2.5) THEN
      WRITE(6,*) Z,'*** NG-3 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-3 ***'
      CALL RNKAE4(A,10,Z)
      IF (Z.NE.69.0) THEN
      WRITE(6,*) Z,'*** NG-4 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-4 ***'
      CALL RNKAE5(A,B,10,Z)
      IF (Z.NE.3.5) THEN
      WRITE(6,*) Z,'*** NG-5 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-5 ***'
      STOP
      END
      SUBROUTINE RNKAE1(W_A,W_B,W_C)
      REAL*4 W_A(9),W_B(9),W_C(9)
      REAL*4    A(9),B(9),C(9)
      POINTER (PA1,A),(PB1,B),(PC1,C)
      PA1=LOC(W_A(1))
      PB1=LOC(W_B(1))
      PC1=LOC(W_C(1))
      C(2)=0
      DO 10 I=1,9
        J   =C(2)
        C(2)=J +I
        C(2)=C(2)+A(I)*B(I)
   10 CONTINUE
      RETURN
      END
      SUBROUTINE RNKAE2(W_A,M,Z)
      REAL*4   A(M)
      REAL*4   W_A(M)
      POINTER (PA2,A)
      PA2=LOC(W_A(1))
      DO 10 I=1,M
        X=A(2)
        Y=A(3)
        IF (I.GE.5) J=I+5
        Z=A(2)
   10  CONTINUE
      Z=Z+X+Y
      RETURN
      END
      SUBROUTINE RNKAE3(W_A,W_B,M,Z)
      REAL*4   W_A(M),W_B(M)
      REAL*4   A(M),B(M)
      POINTER  (PA3,A),(PB2,B)
      PA3=LOC(W_A(1))
      PB2=LOC(W_B(1))
      J=1
      DO 10 I=1,M
        B(5)=1.0
        IF (I.EQ.5) J=I+5
        A(J)=1.5
  10  CONTINUE
      Z=B(5)+A(J)
      RETURN
      END
      SUBROUTINE RNKAE4(W_A,M,ZZ)
      REAL*4   W_A(10)
      REAL*4   W_B(10)
      REAL*4   A(10)
      REAL*4   B(10),BL
      POINTER  (PA4,A),(PB3,B)
      CHARACTER C(10),CC
      REAL*4   D(10),E(20)
      COMMON   /BLK/F(10)
      EQUIVALENCE (D(2),E(5))
      F(3)=0
      PA4=LOC(W_A(1))
      PB3=LOC(W_B(1))
      DO 1 I=1,10
      B(I)=6E+1
      C(I)='A'
    1 E(I)=5.0
      DO 10 I=1,M
        IF (I.GE.5) X=A(2)+5
        BL=B(2)
        CC=C(3)
        Y=D(3)
        Z=F(3)
        CALL SUB()
  10  CONTINUE
      ZZ=BL+Y+Z
      RETURN
      END
      SUBROUTINE SUB()
      COMMON   /BLK/F(10)
      DO 1 I=1,10
    1 F(I)=4
      RETURN
      END
      SUBROUTINE RNKAE5(W_A,W_B,M,Z)
      REAL*4    W_A(M),W_B(M)
      REAL*4    A(M),B(M)
      POINTER   (PA5,A),(PB4,B)
      PA5=LOC(W_A(1))
      PB4=LOC(W_B(1))
      DO 10 I=1,M
        X=A(2)
        B(3)=1.5
        IF (I.GE.5) GOTO 100
        Y=A(2)
  10  CONTINUE
 100  Z=X+B(3)+Y
      RETURN
      END
