      REAL*8 A(30),B(30)
      DATA N/30/
      CALL SUB1(A,B,N)
      CALL SUB2(A,B,N)
      CALL SUB3
      CALL SUB4
      CALL SUB5
      CALL SUB6
      CALL SUB7
      CALL SUB8
      CALL SUB9
      CALL SUB10
      CALL SUB11
      CALL SUB12
      CALL SUB15
      STOP
      END

      SUBROUTINE SUB1(A,B,N)
      REAL*8 A(N),B(N)
      DO 10 I=1,20
        DO 20 J=1,N
          A(J)=1.0
   20 CONTINUE
        DO 30 K=1,N
          B(K)=2.0
   30 CONTINUE
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB2(A,B,N)
      REAL*8 A(N),B(N)
      RC=2.0
      DO 10 I=1,N
      A(I)=I
      IF(RC.LE.2.0) THEN
      B(I)=I+2.0
      ENDIF
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB3
      DO 10 I=1,10
      S=I+1.9
      T=S*2.0
      V=S+T
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB4
      REAL*8 C(100),D(60)
      DO 10 I=1,60
      D(I)=I
      C(I)=D(I)
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB5
      REAL*8 A(30),B(30)
      DO 10 I=1,20
        DO 20 J=1,30
          A(J)=1.0
   20 CONTINUE
        DO 30 K=1,30
          B(K)=2.0
   30 CONTINUE
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB6
      REAL*8 A(10),B(10)
      RC=2.0
      DO 10 I=1,10
      A(I)=I
      IF(RC.LE.2.0) THEN
      B(I)=I+2.0
      ENDIF
   10 CONTINUE
      RETURN
      END
      SUBROUTINE SUB7
      REAL*8 X(15)
      DO 10 I=1,9
      S=I+1.9
      T=S*2.0
      V=S+T
      X(I)=V
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB8
      REAL*8 A(10),B(10)
      DATA N/10/
      DO 10 I=1,N
      A(I)=I
      B(I)=A(I)
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB9
      REAL*8 X(10)
      DO 10 I=1,10000
      IF(I.LE.10) THEN
      X(I)=I
      ENDIF
   10 CONTINUE
      RETURN
      END

      SUBROUTINE SUB10
      REAL*8 X(10),Y(10)
      RC=3.0
      DO 999 II=1,100
      DO 10 I=1,10
      X(I)=SQRT(REAL(I))
      IF(RC.LE.5.0)THEN
      X(I)=I
      ENDIF
   10 CONTINUE
      DO 20 J=1,9
      Y(J)=X(J)
      IF(RC.GT.1.0) THEN
      Y(J)=I+0.4
      ENDIF
   20 CONTINUE
  999 CONTINUE
      STOP
      END

      SUBROUTINE SUB11
      PARAMETER (N=10)
      REAL*8 AA(N),BB(N),C(N),D(N)
      INTEGER L(N)
      LOGICAL*4 M(N)
      DATA AA/10*2.0/,C/10*9.0/,L/10*6/,M/10*.FALSE./
      RC=4.6
      DO 10 I=1,N
      IF(M(I)) BB(I)=C(L(I))
      D(1)=AA(I)
      IF(RC.LE.10.0)THEN
      D(I)=C(I)
      ENDIF
   10 CONTINUE
      PRINT *,BB
      STOP
      END

      SUBROUTINE SUB12
      COMMON XX(20),YY(20),ZZ(20)
      COMMON K
      DATA XX/20*1.0/,YY/20*3.8/,K/10/
      DO 10 I=1,K
      ZZ(I)=XX(I)+YY(I)
   10 CONTINUE
      CALL SUB13
      RETURN
      END

      SUBROUTINE SUB13
      COMMON XX(20),YY(20),ZZ(20)
      COMMON K
      DO 10 I=1,K
      XX(I)=XX(I)+1.5
      YY(I)=YY(I)-1.0
      ZZ(I)=XX(I)+YY(I)
   10 CONTINUE
      CALL SUB14
      PRINT *,ZZ
      RETURN
      END

      SUBROUTINE SUB14
      REAL*8 S(10),T(10),U(10)
      INTEGER L(10)
      LOGICAL*4 M(10)
      DATA S/10*9.9/,U/10*-3.1/,L/10*3/,M/10*.FALSE./
      DO 100 I=1,10
      IF(M(I)) T(I)=U(L(I))
      T(1)=S(I)
  100 CONTINUE
      RETURN
      END

      SUBROUTINE SUB15
      REAL*8 A(10),B(10),X(10,10)
      DO 10 I=1,10
       A(I)=I+0.1
       B(I)=A(I)*2.5
      DO 20 J=1,10
       X(I,J)=55-9.9999
   20 CONTINUE
   10 CONTINUE
      PRINT *,X
      RETURN
      END
