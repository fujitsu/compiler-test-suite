      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 I=1
      J=0
      K=2
      L=1
   11 CT1=FLOAT(I)
      X(I)=CT1**3
      CT2=CMPLX(FLOAT(J),FLOAT(K))
      X(I+1)=CSIN(CT2)
   19 I=I+2
      J=J+1
      K=K+2
      Y(L)=CT1
      Y(L+1)=CT2
      L=L+2
      IF(I.LT.4) GO TO 11

   20 J=0
      K=1
      DO 29 I=5,8,2
   21 J=J+1
      CT1=FLOAT(I)
      X(I)=CT1/C1
      CT2=CMPLX(FLOAT(J),FLOAT(K))
      X(I+1)=CCOS(CT2)
      K=K+2
   29 CONTINUE
      Y(K)=CT1
      Y(K+1)=CT2

 1010 I=1
 1011 FI=FLOAT(I)
      A(I)=SIN(FI)
 1019 I=I+2
      A(I-1)=FI
      IF(I.LT.4) GO TO 1011

 1020 DO 1029 I=5,6
 1021 FI=FLOAT(I)
      A(I)=COS(FI)
 1029 CONTINUE
      B(6)=FI

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
