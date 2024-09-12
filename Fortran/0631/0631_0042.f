      INTEGER     A(10,10,10,3),B(10,10,10,3),C(10,10,10,3)
      REAL*8      F(10,10,10,3),G(10,10,10,3),H(10,10,10,3)
      COMPLEX*16  Q(10,10,10,3),R(10,10,10,3),S(10,10,10,3)
      CALL       INIT(A,B,C,F,G,H,Q,R,S)
      CALL       SUB1 (A,B,C,F,G,H,Q,R,S)
      CALL       W    (A,B,C,F,G,H,Q,R,S)
      END
      SUBROUTINE INIT(A,B,C,F,G,H,Q,R,S)
      INTEGER     A(10,10,10,3),B(10,10,10,3),C(10,10,10,3)
      REAL*8      F(10,10,10,3),G(10,10,10,3),H(10,10,10,3)
      COMPLEX*16  Q(10,10,10,3),R(10,10,10,3),S(10,10,10,3)
      DO 10 I1=1,3
      DO 10 I2=1,10
      DO 10 I3=1,10
      DO 10 I4=1,10
        A(I4,I3,I2,I1)=MOD(I1-I2,2)
        B(I4,I3,I2,I1)=MOD(I1-I3,2)
        C(I4,I3,I2,I1)=MOD(I2-I1,2)
        F(I4,I3,I2,I1)=MOD(I3-I2,2)
        G(I4,I3,I2,I1)=MOD(I1-I2,2)
        H(I4,I3,I2,I1)=MOD(I1-I3,2)
        Q(I4,I3,I2,I1)=CMPLX(A(I4,I3,I2,I1),B(I4,I3,I2,I1))
        R(I4,I3,I2,I1)=CMPLX(C(I4,I3,I2,I1),A(I4,I3,I2,I1))
        S(I4,I3,I2,I1)=CMPLX(G(I4,I3,I2,I1),F(I4,I3,I2,I1))
   10 CONTINUE
      END
      SUBROUTINE W(A,B,C,F,G,H,Q,R,S)
      INTEGER     A(10,10,10,3),B(10,10,10,3),C(10,10,10,3)
      REAL*8      F(10,10,10,3),G(10,10,10,3),H(10,10,10,3)
      COMPLEX*16  Q(10,10,10,3),R(10,10,10,3),S(10,10,10,3)
      WRITE(6,*)((((A(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((B(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((C(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((F(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((G(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((H(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((Q(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((R(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      WRITE(6,*)((((S(I4,I3,I2,I1)
     *             ,I1=1,3,1),I3=1,10,3),I2=1,10,3),I4=1,10,3)
      END
      SUBROUTINE SUB1(A,B,C,F,G,H,Q,R,S)
      INTEGER     A(10,10,10,3),B(10,10,10,3),C(10,10,10,3)
      REAL*8      F(10,10,10,3),G(10,10,10,3),H(10,10,10,3)
      COMPLEX*16  Q(10,10,10,3),R(10,10,10,3),S(10,10,10,3)
      DO 10 I1=1,3
      DO 10 I2=3,8
      DO 10 I3=3,8
      DO 10 I4=3,8
        A(I4,I3,I2,I1)=A(I4-2,I3,I2,I1)*B(I4,I3,I2,I1)
        C(I4,I3,I2,I1)=C(I4,I3-2,I2,I1)+B(I4,I3,I2,I1)
        B(I4,I3,I2,I1)=A(I4,I3,I2-2,I1)*C(I4-2,I3,I2,I1)
        F(I4,I3,I2,I1)=F(I4,I3,I2-2,I1)-G(I4,I3,I2,I1)
        H(I4,I3,I2,I1)=F(I4-2,I3,I2,I1)*H(I4-2,I3,I2,I1)
        G(I4,I3,I2,I1)=H(I4,I3-2,I2,I1)-F(I4,I3-2,I2,I1)
        Q(I4,I3,I2,I1)=Q(I4,I3,I2-2,I1)-S(I4,I3,I2,I1)
        R(I4,I3,I2,I1)=Q(I4-2,I3,I2,I1)*S(I4-2,I3,I2,I1)
        S(I4,I3,I2,I1)=R(I4,I3-2,I2,I1)-R(I4-2,I3,I2,I1)
   10 CONTINUE
      DO 20 I1=1,3
      DO 20 I2=3,8
      DO 20 I3=3,8
      DO 20 I4=3,8
        A(I4,I3,I2,I1)=ABS(A(I4-2,I3,I2,I1))*B(I4,I3,I2,I1)
        C(I4,I3,I2,I1)=MAX(C(I4,I3-2,I2,I1),B(I4,I3,I2,I1))
        F(I4,I3,I2,I1)=SQRT(ABS(F(I4,I3,I2-2,I1)))-G(I4,I3,I2,I1)
        H(I4,I3,I2,I1)=F(I4-2,I3,I2,I1)*EXP(H(I4-2,I3,I2,I1))
        Q(I4,I3,I2,I1)=SQRT(Q(I4,I3,I2-2,I1))-S(I4,I3,I2,I1)
        R(I4,I3,I2,I1)=Q(I4-2,I3,I2,I1)*EXP(S(I4-2,I3,I2,I1))
   20 CONTINUE
      DO 30 I1=1,3
      DO 30 I2=3,8
      DO 30 I3=3,8
      DO 30 I4=3,8
        IF(A(I4,I3,I2,I1)) 31,32,33
   31   A(I4,I3,I2,I1)=MAX(A(I4-2,I3,I2,I1),B(I4,I3,I2,I1))
        C(I4,I3,I2,I1)=C(I4,I3-2,I2,I1)+B(I4,I3,I2,I1)
        IF(A(I4,I3,I2,I1)) 35,36,36
   35   B(I4,I3,I2,I1)=A(I4,I3,I2-2,I1)*C(I4-2,I3,I2,I1)
   36   F(I4,I3,I2,I1)=F(I4,I3,I2-2,I1)-G(I4,I3,I2,I1)
   32   H(I4,I3,I2,I1)=F(I4-2,I3,I2,I1)*EXP(H(I4-2,I3,I2,I1))
   33   G(I4,I3,I2,I1)=H(I4,I3-2,I2,I1)-SIN(F(I4,I3-2,I2,I1))
        IF(H(I4,I3,I2,I1).GT.0.0) GO TO 34
        Q(I4,I3,I2,I1)=Q(I4,I3,I2-2,I1)-S(I4,I3,I2,I1)
        R(I4,I3,I2,I1)=Q(I4-2,I3,I2,I1)*SQRT(R(I4-2,I3,I2,I1))
   34   S(I4,I3,I2,I1)=R(I4,I3-2,I2,I1)-R(I4-2,I3,I2,I1)
   30 CONTINUE
      END
