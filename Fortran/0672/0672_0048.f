      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 DO 19 I=1,2
   11 FI=I
      A(I)=FI*2.
      XT=CMPLX(A(I),FI)**3
      X(I)=XT
   19 CONTINUE

   20 DO 29 I=3,6,2
   21 X(I)=(C1+C2)**3
      Y(I)=(C1+C2)**3
      X(I+1)=CSIN(C1)**3
      Y(I+1)=CSIN(C1)**3
   29 CONTINUE

   30 DO 39 I=7,8
   31 X(I)=CMPLX(B1,B2)**2
      Y(I)=CMPLX(B1,B2)**2
   39 CONTINUE

   40 XT=(0.,0.)
      DO 49 I=9,10
   41 DO 48 J=9,10
      IF(J.EQ.I) GO TO 45
   43 XT=XT+CSIN(C(I))
      GO TO 48
   45 XT=XT-CSIN(C(I))
   48 CONTINUE
      X(I)=XT
   49 CONTINUE

   50 XT=(0.,0.)
      DO 59 I=11,12
   51 DO 58 J=11,12
      IF(J.EQ.I) GO TO 55
   52 XT=XT+CSIN(C(I))
      IF(J.EQ.I+1) GO TO 58
   53 XT=XT+CSIN(C(I))
      GO TO 58
   55 XT=XT+CSIN(C(I))
   58 CONTINUE
      X(I)=XT
   59 CONTINUE

 1010 DO 1019 I=3,6,2
 1011 FJ=I-1+1
      B(I)=FJ
      A(I)=SIN(B(I))
      FJ=I+1
      B(I+1)=FJ
      A(I+1)=B(I+1)**3
 1019 CONTINUE

 1020 DO 1029 I=7,10,2
 1021 A(I)=B1+B2
      B(I)=B1+B2
      A(I+1)=SIN(B3+B1)
      B(I+1)=SIN(B3+B1)
 1029 CONTINUE

 1030 DO 1039 I=13,14
 1031 X(I)=CMPLX(B3,B4)*C1
      Y(I)=CMPLX(B3,B4)*C1
 1039 CONTINUE

 1040 BT=0.
      DO 1049 I=11,12
 1041 DO 1048 J=11,12
      IF(J.EQ.I) GO TO 1045
 1043 BT=BT+SIN(B(I))
      GO TO 1048
 1045 BT=BT-SIN(B(I))
 1048 CONTINUE
      A(I)=BT
 1049 CONTINUE

 1050 BT=0.
      DO 1059 I=13,14
 1051 DO 1058 J=13,14
      IF(J.EQ.I) GO TO 1055
 1052 BT=BT+SIN(B(I))
      IF(J.EQ.I+1) GO TO 1058
 1053 BT=BT+SIN(B(I))
      BT=BT+A(I)
      GO TO 1058
 1055 BT=BT+SIN(B(I))
 1058 CONTINUE
      A(I)=BT
 1059 CONTINUE

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
