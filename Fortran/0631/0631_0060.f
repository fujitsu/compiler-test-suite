      INTEGER     A(100,100)
      REAL*8      H(100,100)
      COMPLEX*16  V(100,100)
      REAL        CONDR
      COMPLEX     CONDC
      CONDR=1.0
      CONDC=(0.0,1.0)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        H(I2,I1)=1.0
        V(I2,I1)=CMPLX(1)
   15 CONTINUE
      CALL SUB1(A,H,V,CONDR,CONDC)
      END
      SUBROUTINE SUB1(A,H,V,CONDR,CONDC)
      INTEGER     A(100,10,10),B(100,10,10)
      INTEGER     C(100,10,10),D(100,10,10)
      REAL*8      H(100,10,10),O(100,10,10)
      REAL        P(100,10,10),Q(100,10,10)
      COMPLEX*16  V(100,10,10),W(100,10,10)
      COMPLEX     X(100,10,10),Y(100,10,10)
      REAL        CONDR
      COMPLEX     CONDC
      DO 15 I1=1,10
      DO 15 I2=1,10
      DO 15 I3=1,100
        A(I3,I2,I1)=1
        B(I3,I2,I1)=I1
        C(I3,I2,I1)=1
        D(I3,I2,I1)=I2
        H(I3,I2,I1)=1.0
        O(I3,I2,I1)=1.0
        P(I3,I2,I1)=1.0
        Q(I3,I2,I1)=SIN(REAL(I1+I2))
        V(I3,I2,I1)=CMPLX(1)
        W(I3,I2,I1)=CMPLX(I2)
        X(I3,I2,I1)=CMPLX(I1)
        Y(I3,I2,I1)=CMPLX(I2)
   15 CONTINUE
      R=1.0
      DO 10 I3=1,10
      DO 10 I2=1,10
      DO 10 I1=1,99
        IF(R.GT.0.0.AND.I3.GT.2.AND.I2.LT.9.OR.I1.GT.3)GOTO 11
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        IF(R.GT.0.0.AND.I2.LT.9.OR.I1.GT.3)GOTO 12
   11   D(I1,I2,I3)=A(I1+1,I2,I3)+C(I1,I2,I3)
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1+1,I2,I3)+C(I1,I2,I3)
        IF(R.GT.0.0.AND.I2.LT.9)GOTO 13
   12   A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1+1,I2,I3)+C(I1,I2,I3)
   13   A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1+1,I2,I3)+C(I1,I2,I3)
   10 CONTINUE
      DO 20 I3=1,10
      DO 20 I2=1,8
      DO 20 I1=1,99
        IF(IMAG(CONDC).GT.0.0.AND.I2.LT.9.OR.I1.GT.3)GOTO 21
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
   21   D(I1,I2,I3)=A(I1,I2+2,I3)+C(I1,I2,I3)
   20 CONTINUE
      DO 30 I3=1,7
      DO 30 I2=1,10
      DO 30 I1=1,90
        IF(SQRT(CONDR).GT.0.0.AND.I2.LT.9.OR.I1.GT.3)GOTO 31
   31   H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1,I2,I3+3)+P(I1,I2,I3)
   30 CONTINUE
      DO 40 I3=1,10
      DO 40 I2=1,10
      DO 40 I1=1,90
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        IF(SQRT(CONDR).GT.3.0)GOTO 41
   41   Q(I1,I2,I3)=H(I1+4,I2,I3)+P(I1,I2,I3)
   40 CONTINUE
      DO 50 I3=1,10
      DO 50 I2=1,9
      DO 50 I1=1,90
        IF(A(I1,I2,I3).GT.3.OR.B(1,1,1).LT.10)GOTO 51
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2+1,I3)+W(I1,I2,I3)
   51   V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2+1,I3)+W(I1,I2,I3)
        IF(A(I1,I2,I3).GT.3.AND.H(I1,I2,I3).LT.9.0)GOTO 52
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2+1,I3)+W(I1,I2,I3)
   52   CONTINUE
        IF(H(I1,I2,I3).GT.3.0.OR.IMAG(W(I1,I2,I3)).LT.9.0)GOTO 53
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2+1,I3)+W(I1,I2,I3)
   53   CONTINUE
   50 CONTINUE
      DO 60 I3=1,7
      DO 60 I2=1,10
      DO 60 I1=1,90
        IF(H(I1,I2,I3).GT.3.0.OR.R.LT.9.0.AND.
     *     I3.GT.3.OR.CONDR.EQ.2.0)GOTO 61
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2,I3)+W(I1,I2,I3+2)
   61   CONTINUE
        IF(O(I1,I2,I3).GT.3.0.OR.R.LT.9.0.AND.
     *     I3.GT.3.OR.CONDR.EQ.2.0)GOTO 62
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2,I3)+W(I1,I2,I3+2)
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2,I3)+W(I1,I2,I3+2)
   62   CONTINUE
   60 CONTINUE
      WRITE(6,*)(((A(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((B(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((C(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((D(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((H(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((O(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((P(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((Q(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((V(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((W(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((X(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      WRITE(6,*)(((Y(I1,I2,I3),I1=20,100,20),I2=1,10,3),I3=1,10,3)
      END
