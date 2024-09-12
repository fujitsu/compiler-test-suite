      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 XT=(0.,0.)
      DO 19 I=1,2
   11 DO 18 J=1,2
      IF(I.NE.J) GO TO 15
   12 XT=XT-CSIN(C(I))
      GO TO 18
   15 XT=XT+CSIN(C(I))
      IF(I.EQ.J+1) GO TO 18
   16 XT=XT-CSIN(C(I))
   18 CONTINUE
      X(I)=XT
   19 CONTINUE

   20 DO 29 I=3,4
   21 X(I)=(C1+C2)**I
      Y(I)=(C1+C3)/X(I)
   29 CONTINUE

 1010 BT=0.
      DO 1019 I=1,2
 1011 DO 1018 J=1,2
      IF(I.NE.J) GO TO 1015
 1012 BT=BT-SIN(B(I))
      GO TO 1018
 1015 BT=BT+SIN(B(I))
      IF(I.EQ.J+1) GO TO 1018
 1016 BT=BT-SIN(B(I))
 1018 CONTINUE
      A(I)=BT
 1019 CONTINUE

 1020 DO 1029 I=3,4
 1021 A(I)=(B1+B2)**I
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
