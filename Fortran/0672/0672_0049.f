      IMPLICIT COMPLEX*8(C-E,X-Z)
      DIMENSION A(20),B(20),C(20),X(20),Y(20),Z(20)

      CALL INIT1(A,B,C,X,Y,Z)
      CALL INIT2(B1,B2,B3,B4,C1,C2,C3,C4)

   10 DO 19 I=1,2
   11 FI=I
      X(I)=C1*FI
      CW=X(I)
      Y(I)=CW**3
   19 CONTINUE

   20 DO 29 I=3,4
   21 E1=C1+C2
      E2=C1+C2
      E3=CSIN(E1)
      E4=CSIN(E2)
      E1=C2-C1
      E2=C2-C1
      X(I)=E1+E3
      Y(I)=E2+E4
   29 CONTINUE

   30 DO 39 I=5,6
   31 E1=C(I)+C1
      E2=C(I)+C1
      E3=CSIN(E1)
      E4=CSIN(E2)
      X(I)=E3
      Y(I)=E4
   39 CONTINUE

   40 DO 49 I=7,8
   41 E1=C1
      X(I)=CSIN(C1)
      Y(I)=CSIN(E1)
   49 CONTINUE

   50 DO 59 I=9,10
   51 E1=C1+C2
      X(I)=CSIN(E1)
      E1=C2-C1
      Y(I)=(C1+C3)/E1
   59 CONTINUE

   60 XT=(0.,0.)
      DO 69 I=11,12
   61 DO 68 J=11,12
      IF(J.EQ.I) GO TO 65
   62 XT=XT+CSIN(C(I))
      IF(J.EQ.I+1) GO TO 68
   63 XT=XT+CSIN(C(I))
      GO TO 68
   65 XT=XT-CSIN(C(I))
      IF(J.EQ.12) GO TO 68
   66 XT=XT+CSIN(C(I))
   68 CONTINUE
      X(I)=XT
   69 CONTINUE

 1010 DO 1019 I=1,2
 1011 FJ=I
      B(I)=FJ
      AW=B(I)
      A(I)=SIN(AW)
 1019 CONTINUE

 1020 DO 1029 I=3,4
 1021 A1=B1+B(I)
      A2=B1+B(I)
      A3=SIN(A1)
      A4=SIN(A2)
      A1=B1+B3
      A2=B2+B3
      A(I)=A1*A2+A3*A4
 1029 CONTINUE

 1030 DO 1039 I=5,6
 1031 A1=B1+B2
      A2=B1+B2
      A(I)=SIN(A1)+SIN(A2)+A1*2.+A2*2.
 1039 CONTINUE

 1040 DO 1049 I=7,8
 1041 A1=B1
      A(I)=SIN(B1)+SIN(A1)+A1*2.+B1*2.
 1049 CONTINUE

 1050 DO 1059 I=9,10
 1051 A1=B1+B2
      A2=SIN(A1)
      A1=B1-B2
      A(I)=A2+SIN(A1)
 1059 CONTINUE

 1060 BT=0.
      DO 1069 I=11,12
 1061 DO 1068 J=11,12
      IF(J.EQ.I) GO TO 1065
 1062 BT=BT+SIN(B(I))
      IF(J.EQ.I+1) GO TO 1068
 1063 BT=BT+SIN(B(I))
      BT=BT+A(I)
      GO TO 1068
 1065 BT=BT-SIN(B(I))
      IF(J.EQ.11) GO TO 1068
 1066 BT=BT-SIN(B(I))
      BT=BT+A(I)
 1068 CONTINUE
      A(I)=BT
 1069 CONTINUE

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
