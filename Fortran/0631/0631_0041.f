      INTEGER     A(30,30,10),B(30,30,10),C(30,30,10)
      INTEGER     D(30,30,10),E(30,30,10)
      REAL*8      F(30,30,10),G(30,30,10),H(30,30,10)
      REAL*8      O(30,30,10),P(30,30,10)
      COMPLEX*16  Q(30,30,10),R(30,30,10),S(30,30,10)
      COMPLEX*16  T(30,30,10),U(30,30,10)
      CALL       INIT(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       SUB1 (A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       W    (A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       INIT(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       SUB2 (A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       W    (A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       INIT(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       SUB3 (A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      CALL       W    (A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      END
      SUBROUTINE INIT(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      INTEGER     A(30,30,10),B(30,30,10),C(30,30,10)
      INTEGER     D(30,30,10),E(30,30,10)
      REAL*8      F(30,30,10),G(30,30,10),H(30,30,10)
      REAL*8      O(30,30,10),P(30,30,10)
      COMPLEX*16  Q(30,30,10),R(30,30,10),S(30,30,10)
      COMPLEX*16  T(30,30,10),U(30,30,10)
      DO 10 I1=1,10
      DO 10 I2=1,30
      DO 10 I3=1,30
        A(I3,I2,I1)=MOD(I1-I2,2)
        B(I3,I2,I1)=MOD(I1-I3,2)
        C(I3,I2,I1)=MOD(I2-I1,2)
        D(I3,I2,I1)=MOD(I2-I3,2)
        E(I3,I2,I1)=1
        F(I3,I2,I1)=MOD(I3-I2,2)
        G(I3,I2,I1)=MOD(I1-I2,2)
        H(I3,I2,I1)=MOD(I1-I3,2)
        O(I3,I2,I1)=MOD(I2-I1,2)
        P(I3,I2,I1)=1
        Q(I3,I2,I1)=CMPLX(A(I3,I2,I1),B(I3,I2,I1))
        R(I3,I2,I1)=CMPLX(C(I3,I2,I1),D(I3,I2,I1))
        S(I3,I2,I1)=CMPLX(E(I3,I2,I1),F(I3,I2,I1))
        T(I3,I2,I1)=CMPLX(G(I3,I2,I1),H(I3,I2,I1))
        R(I3,I2,I1)=CMPLX(O(I3,I2,I1),P(I3,I2,I1))
        U(I3,I2,I1)=CMPLX(1)
   10 CONTINUE
      END
      SUBROUTINE W(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      INTEGER     A(30,30,10),B(30,30,10),C(30,30,10)
      INTEGER     D(30,30,10),E(30,30,10)
      REAL*8      F(30,30,10),G(30,30,10),H(30,30,10)
      REAL*8      O(30,30,10),P(30,30,10)
      COMPLEX*16  Q(30,30,10),R(30,30,10),S(30,30,10)
      COMPLEX*16  T(30,30,10),U(30,30,10)
      WRITE(6,*)(((A(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((B(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((C(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((D(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((E(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((F(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((G(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((H(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((O(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((P(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((Q(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((R(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((S(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((T(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      WRITE(6,*)(((U(I3,I2,I1),I3=1,30,6),I2=1,30,6),I1=1,10,3)
      END
      SUBROUTINE SUB1(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      INTEGER     A(30,30,10),B(30,30,10),C(30,30,10)
      INTEGER     D(30,30,10),E(30,30,10)
      REAL*8      F(30,30,10),G(30,30,10),H(30,30,10)
      REAL*8      O(30,30,10),P(30,30,10)
      COMPLEX*16  Q(30,30,10),R(30,30,10),S(30,30,10)
      COMPLEX*16  T(30,30,10),U(30,30,10)
      DO 10 I1=3,10
      DO 10 I2=5,25
      DO 10 I3=10,20
        A(I3,I2,I1)=A(I3+2,I2-1,I1)*B(I3-2,I2-3,I1)/E(I3-2,I2-2,I1)
        B(I3,I2,I1)=C(I3-2,I2-1,I1)+D(I3-1,I2-3,I1)/E(I3-2,I2-2,I1)
        F(I3,I2,I1)=G(I3+1,I2-1,I1)-F(I3-2,I2-3,I1)/P(I3-2,I2-2,I1)
        H(I3,I2,I1)=H(I3-2,I2-1,I1)-O(I3-1,I2-3,I1)/P(I3+2,I2-2,I1)
        Q(I3,I2,I1)=Q(I3-1,I2-1,I1)-R(I3-2,I2-3,I1)-U(I3-2,I2-2,I1)
        R(I3,I2,I1)=S(I3+2,I2-1,I1)-T(I3-1,I2-3,I1)-U(I3+2,I2-2,I1)
        T(I3,I2,I1)=A(I3-2,I2-1,I1)+F(I3-1,I2-3,I1)
     *             +Q(I3-2,I2-1,I1)+T(I3-1,I2-3,I1)
   10 CONTINUE
      DO 20 I1=3,10
      DO 20 I2=5,25
      DO 20 I3=10,20
        A(I3,I2,I1)=A(I3+1,I2-1,I1)*B(I3,I2-3,I1)/E(I3+1,I2+2,I1)
        B(I3,I2,I1)=C(I3,I2-3,I1)+D(I3,I2-1,I1)/E(I3,I2-2,I1)
        F(I3,I2,I1)=G(I3,I2+4,I1)-F(I3+2,I2-3,I1)/P(I3,I2+2,I1)
        H(I3,I2,I1)=H(I3+2,I2-2,I1)-O(I3,I2-2,I1)/P(I3,I2-1,I1)
        Q(I3,I2,I1)=Q(I3,I2-1,I1)-R(I3,I2-4,I1)-U(I3,I2-2,I1)
        R(I3,I2,I1)=S(I3,I2-3,I1)-T(I3,I2-3,I1)-U(I3,I2+1,I1)
        T(I3,I2,I1)=A(I3+1,I2-2,I1)+F(I3+2,I2-3,I1)
     *             +Q(I3,I2-1,I1)+T(I3,I2-3,I1)
   20 CONTINUE
      DO 30 I2=5,25
      DO 30 I3=10,20
      DO 30 I1=3,10
        A(I3,I2,I1)=A(I3+2,I2-1,I1)*B(I3-2,I2-3,I1)/E(I3-2,I2-2,I1)
        B(I3,I2,I1)=C(I3-2,I2-1,I1)+D(I3-1,I2-3,I1)/E(I3-2,I2-2,I1)
        F(I3,I2,I1)=G(I3+1,I2-1,I1)-F(I3-2,I2-3,I1)/P(I3-2,I2-2,I1)
        H(I3,I2,I1)=H(I3-2,I2-1,I1)-O(I3-1,I2-3,I1)/P(I3+2,I2-2,I1)
        Q(I3,I2,I1)=Q(I3-1,I2-1,I1)-R(I3-2,I2-3,I1)-U(I3-2,I2-2,I1)
        R(I3,I2,I1)=S(I3+2,I2-1,I1)-T(I3-1,I2-3,I1)-U(I3+2,I2-2,I1)
        T(I3,I2,I1)=A(I3-2,I2-1,I1)+F(I3-1,I2-3,I1)
     *             +Q(I3-2,I2-1,I1)+T(I3-1,I2-3,I1)
   30 CONTINUE
      DO 40 I2=5,25
      DO 40 I1=3,10
      DO 40 I3=10,20
        A(I3,I2,I1)=A(I3+1,I2-1,I1)*B(I3,I2-3,I1)/E(I3+1,I2+2,I1)
        B(I3,I2,I1)=C(I3,I2-3,I1)+D(I3,I2-1,I1)/E(I3,I2-2,I1)
        F(I3,I2,I1)=G(I3,I2+4,I1)-F(I3+2,I2-3,I1)/P(I3,I2+2,I1)
        H(I3,I2,I1)=H(I3+2,I2-2,I1)-O(I3,I2-2,I1)/P(I3,I2-1,I1)
        Q(I3,I2,I1)=Q(I3,I2-1,I1)-R(I3,I2-4,I1)-U(I3,I2-2,I1)
        R(I3,I2,I1)=S(I3,I2-3,I1)-T(I3,I2-3,I1)+U(I3,I2+1,I1)
        T(I3,I2,I1)=A(I3+1,I2-2,I1)+F(I3+2,I2-3,I1)
     *             +Q(I3,I2-1,I1)+T(I3,I2-3,I1)
   40 CONTINUE
      END
      SUBROUTINE SUB2(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      INTEGER     A(30,30,10),B(30,30,10),C(30,30,10)
      INTEGER     D(30,30,10),E(30,30,10)
      REAL*8      F(30,30,10),G(30,30,10),H(30,30,10)
      REAL*8      O(30,30,10),P(30,30,10)
      COMPLEX*16  Q(30,30,10),R(30,30,10),S(30,30,10)
      COMPLEX*16  T(30,30,10),U(30,30,10)
      DO 10 I1=3,10
      DO 10 I2=5,25
      DO 10 I3=10,20
        IF(I1.GT.I2.OR.I3.LT.I1)THEN
        A(I3,I2,I1)=A(I3+2,I2-1,I1)*B(I3-2,I2-3,I1)/E(I3-2,I2-2,I1)
        B(I3,I2,I1)=C(I3-2,I2-1,I1)+D(I3-1,I2-3,I1)/E(I3-2,I2-2,I1)
        F(I3,I2,I1)=G(I3+1,I2-1,I1)-F(I3-2,I2-3,I1)/P(I3-2,I2-2,I1)
        ELSE
        H(I3,I2,I1)=H(I3-2,I2-1,I1)-O(I3-1,I2-3,I1)/P(I3+2,I2-2,I1)
        IF(I2.GT.I1.OR.I1.LT.I3)THEN
        Q(I3,I2,I1)=Q(I3-1,I2-1,I1)-R(I3-2,I2-3,I1)+U(I3-2,I2-2,I1)
        ENDIF
        ENDIF
        IF(I2.GT.I1.OR.I1.LT.I3)GOTO 10
        R(I3,I2,I1)=S(I3+2,I2-1,I1)-T(I3-1,I2-3,I1)+U(I3+2,I2-2,I1)
        T(I3,I2,I1)=A(I3-2,I2-1,I1)+F(I3-1,I2-3,I1)
     *             +Q(I3-2,I2-1,I1)+T(I3-1,I2-3,I1)
   10 CONTINUE
      DO 20 I1=3,10
      DO 20 I2=5,25
      DO 20 I3=10,20
        IF(I2.GT.I1.OR.I1.LT.I3)GOTO 21
        A(I3,I2,I1)=A(I3+1,I2-1,I1)*B(I3,I2-3,I1)/E(I3+1,I2+2,I1)
   21   B(I3,I2,I1)=C(I3,I2-3,I1)+D(I3,I2-1,I1)/E(I3,I2-2,I1)
        IF(I2.GT.I1.OR.I1.LT.I3)THEN
        IF(I2.GT.I1.OR.I1.LT.I3)GOTO 22
        IF(I2.GT.I1.OR.I1.LT.I3)THEN
        F(I3,I2,I1)=G(I3,I2+4,I1)-F(I3+2,I2-3,I1)/P(I3,I2+2,I1)
        ENDIF
   22   H(I3,I2,I1)=H(I3+2,I2-2,I1)-O(I3,I2-2,I1)/P(I3,I2-1,I1)
        ENDIF
        IF(I2.NE.I1.OR.I1.NE.I3)THEN
        Q(I3,I2,I1)=Q(I3,I2-1,I1)-R(I3,I2-4,I1)+U(I3,I2-2,I1)
        ELSE
        R(I3,I2,I1)=S(I3,I2-3,I1)-T(I3,I2-3,I1)+U(I3,I2+1,I1)
        T(I3,I2,I1)=A(I3+1,I2-2,I1)+F(I3+2,I2-3,I1)
     *             +Q(I3,I2-1,I1)+T(I3,I2-3,I1)
        ENDIF
   20 CONTINUE
      END
      SUBROUTINE SUB3(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U)
      INTEGER     A(30,30,10),B(30,30,10),C(30,30,10)
      INTEGER     D(30,30,10),E(30,30,10),TEMPI
      REAL*8      F(30,30,10),G(30,30,10),H(30,30,10)
      REAL*8      O(30,30,10),P(30,30,10),TEMPR
      COMPLEX*16  Q(30,30,10),R(30,30,10),S(30,30,10)
      COMPLEX*16  T(30,30,10),U(30,30,10),TEMPC
      DO 10 I1=3,10
      DO 10 I2=5,25
      DO 10 I3=10,20
        IF(I1.GT.I2.OR.I3.LT.I1)THEN
        A(I3,I2,I1)=A(I3+2,I2-1,I1)*B(I3-2,I2-3,I1)/E(I3-2,I2-2,I1)
        TEMPI      =A(I3+2,I2-1,I1)*B(I3-2,I2-3,I1)/E(I3-2,I2-2,I1)
        B(I3,I2,I1)=C(I3-2,I2-1,I1)+D(I3-1,I2-3,I1)/E(I3-2,I2-2,I1)
        B(I3,I2,I1)=C(I3-2,I2-1,I1)+TEMPI          /E(I3-2,I2-2,I1)
        F(I3,I2,I1)=G(I3+1,I2-1,I1)-F(I3-2,I2-3,I1)/P(I3-2,I2-2,I1)
        ELSE
        TEMPR      =H(I3-2,I2-1,I1)-O(I3-1,I2-3,I1)/P(I3+2,I2-2,I1)
        H(I3,I2,I1)=H(I3-2,I2-1,I1)-TEMPR          /P(I3+2,I2-2,I1)
        IF(I2.GT.I1.OR.I1.LT.I3)THEN
        Q(I3,I2,I1)=Q(I3-1,I2-1,I1)-TEMPR          *U(I3-2,I2-2,I1)
        ENDIF
        ENDIF
        IF(I2.GT.I1.OR.I1.LT.I3)GOTO 10
        TEMPC      =S(I3+2,I2-1,I1)-T(I3-1,I2-3,I1)*U(I3+2,I2-2,I1)
        R(I3,I2,I1)=TEMPC          -T(I3-1,I2-3,I1)*U(I3+2,I2-2,I1)
        T(I3,I2,I1)=A(I3-2,I2-1,I1)+F(I3-1,I2-3,I1)
     *             +Q(I3-2,I2-1,I1)+TEMPC
   10 CONTINUE
      DO 20 I1=3,10
      DO 20 I2=5,25
      DO 20 I3=10,20
        IF(I2.GT.I1.OR.I1.LT.I3)GOTO 21
        A(I3,I2,I1)=A(I3+1,I2-1,I1)*B(I3,I2-3,I1)/E(I3+1,I2+2,I1)
        TEMPI      =A(I3+1,I2-1,I1)*B(I3,I2-3,I1)/E(I3+1,I2+2,I1)
        A(I3,I2,I1)=TEMPI          *B(I3,I2-3,I1)/E(I3+1,I2+2,I1)
   21   B(I3,I2,I1)=C(I3,I2-3,I1)+D(I3,I2-1,I1)/E(I3,I2-2,I1)
        IF(I2.GT.I1.OR.I1.LT.I3)THEN
        IF(I2.GT.I1.OR.I1.LT.I3)GOTO 22
        IF(I2.GT.I1.OR.I1.LT.I3)THEN
        TEMPR      =G(I3,I2+4,I1)-F(I3+2,I2-3,I1)/P(I3,I2+2,I1)
        F(I3,I2,I1)=G(I3,I2+4,I1)-TEMPR          /P(I3,I2+2,I1)
        ENDIF
   22   H(I3,I2,I1)=H(I3+2,I2-2,I1)-O(I3,I2-2,I1)/P(I3,I2-1,I1)
        ENDIF
        IF(I2.NE.I1.OR.I1.NE.I3)THEN
        TEMPR      =Q(I3,I2-1,I1)-R(I3,I2-4,I1)*U(I3,I2-2,I1)
        Q(I3,I2,I1)=Q(I3,I2-1,I1)-TEMPR        *U(I3,I2-2,I1)
        ELSE
        TEMPC      =S(I3,I2-3,I1)-T(I3,I2-3,I1)*U(I3,I2+1,I1)
        R(I3,I2,I1)=S(I3,I2-3,I1)-TEMPC        *U(I3,I2+1,I1)
        T(I3,I2,I1)=A(I3+1,I2-2,I1)+F(I3+2,I2-3,I1)
     *             +Q(I3,I2-1,I1)+T(I3,I2-3,I1)
        ENDIF
   20 CONTINUE
      END
