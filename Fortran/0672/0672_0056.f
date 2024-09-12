      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 N=2
      DO 19 I=1,3,N
   11 X(I)=CSIN(CMPLX(B(N),B1))
      Y(I)=CCOS(CMPLX(B(I),B1))
   19 CONTINUE

   20 N=2
      DO 29 I=5,7,N
   21 X(I)=CMPLX(FLOAT(N),B1)**2
      Y(I)=CMPLX(FLOAT(I),B1)
   29 CONTINUE

 1010 N=2
      DO 1019 I=1,4,N
 1011 A(I)=SIN(B(N))
      A(I+1)=SIN(B(I))
 1019 CONTINUE

 1020 N=2
      DO 1029 I=5,8,N
 1021 A(I)=SIN(FLOAT(N))
      A(I+1)=SIN(FLOAT(I))
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
