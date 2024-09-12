      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 DO 19 I=1,2
   11 X(I)=(C1+C2)/(C2+C3)
      IF(I.EQ.3) GO TO 19
   15 Y(I)=(C1+C2)/(C2+C3)
   19 CONTINUE

 1010 DO 1019 I=1,4,2
 1011 A(I)=SIN(B1+B2)
      IF(I.EQ.2) GO TO 1019
 1012 A(I+1)=SIN(B2+B3)
      IF(I.EQ.4) GO TO 1019
 1015 B(I)=COS(B1+B2)
      B(I+1)=COS(B2+B3)
 1019 CONTINUE

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
