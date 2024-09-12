      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 DO 19 I=1,6,3
   11 X(I)=CSIN(C1)**I
      X(I+1)=(C1+C2)**I
      X(I+2)=(C1+C3)**I
      IF(I.EQ.3) GO TO 19
   15 Y(I)=CSIN(C1)**I
      Y(I+1)=C1+C2+C3
      Y(I+2)=(C1+C3)**I
   19 CONTINUE

   20 XT=(0.,0.)
      DO 29 I=7,8
   21 DO 28 J=7,8
      IF(I.NE.J) GO TO 25
   22 XT=XT-CSIN(C(I))
      GO TO 28
   25 XT=XT+CSIN(C(I))
      IF(I.EQ.J+1) GO TO 28
   26 XT=XT-CSIN(C(I))
   28 CONTINUE
      X(I)=XT
   29 CONTINUE

 1010 DO 1019 I=1,6,3
 1011 A(I)=SIN(B1+B2)
      A(I+1)=B2+B3
      A(I+2)=SQRT(B3+B4)
      IF(I.EQ.3) GO TO 1019
 1015 B(I)=COS(B1+B2)
      B(I+1)=B2+B3
      B(I+2)=B3+B4
 1019 CONTINUE

 1020 BT=0.
      DO 1029 I=7,8
 1021 DO 1028 J=7,8
      IF(I.NE.J) GO TO 1025
 1022 BT=BT-SIN(B(I))
      GO TO 1028
 1025 BT=BT+SIN(B(I))
      IF(I.EQ.J+1) GO TO 1028
 1026 BT=BT-SIN(B(I))
      BT=BT+A(I)
 1028 CONTINUE
      A(I)=BT
 1029 CONTINUE

      CALL OUT(A,B,C,X,Y,Z)
      STOP
      END

      SUBROUTINE INIT1(A,B,C,X,Y,Z)
      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)
      DO 10 I=1,20
      FI=I
      A(I)=0.
      B(I)=FI
      C(I)=CMPLX(FI,FI)
      X(I)=(0.,0.)
      Y(I)=(0.,0.)
      Z(I)=(0.,0.)
   10 CONTINUE
      RETURN
      ENTRY INIT2(B1,B2,B3,B4,C1,C2,C3,C4)
      B1=1.
      B2=2.
      B3=3.
      B4=4.
      C1=(1.,1.)
      C2=(2.,2.)
      C3=(3.,3.)
      C4=(4.,4.)
      RETURN
      ENTRY OUT(A,B,C,X,Y,Z)
      WRITE(6,2000) A,B,C,X,Y,Z
      RETURN
 2000 FORMAT(1X,5E20.7)
      END
