      INTEGER     A(50,50),B(50,50)
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50)
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50)
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I1=1,50
      DO 10 I2=1,50
        A(I2,I1)=1
        B(I2,I1)=I1
        C(I2,I1)=1
        D(I2,I1)=I2
        E(I2,I1)=MOD(I1,2)+MOD(I2,2)
        F(I2,I1)=I1
        G(I2,I1)=1
        H(I2,I1)=1.0
        O(I2,I1)=1.0
        P(I2,I1)=1.0
        Q(I2,I1)=SIN(REAL(I1+I2))
        R(I2,I1)=DBLE(1)
        S(I2,I1)=DBLE(MOD(I1*I2,10))
        T(I2,I1)=DBLE(1)
        U(I2,I1)=DBLE(1)
        V(I2,I1)=CMPLX(1)
        W(I2,I1)=CMPLX(I2)
        X(I2,I1)=CMPLX(I1)
        Y(I2,I1)=CMPLX(I2)
   10 CONTINUE
      IF(E(1,1).GT.0) N10=10
      IF(E(1,1).GT.0) N50=50
      CALL SUB1(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      CALL SUB2(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      CALL SUB3(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,N10,N50)
      CALL SUB4(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,N10,N50)
      CALL SUB5(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      CALL SUB6(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      CALL SUB7(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,N10,N50)
      CALL SUB8(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,N10,N50)
      WRITE(6,*)((A(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((B(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((C(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((D(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((E(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((F(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((G(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((H(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((O(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((P(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((Q(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((R(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((S(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((T(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((U(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((V(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((W(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((X(I1,I2),I1=20,50,20),I2=20,50,20)
      WRITE(6,*)((Y(I1,I2),I1=20,50,20),I2=20,50,20)
      END
      SUBROUTINE SUB1(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      INTEGER     A(50,50),B(50,50)
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50)
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50)
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,9
      DO 10 I1=2,9
        A(I1,I2)=A(I1-1,I2)
   10 CONTINUE
      DO 20 I2=2,9
      DO 20 I1=2,9
        X(I1,I2)=X(I1-1,I2)
   20 CONTINUE
      DO 30 I2=3,10
      DO 30 I1=3,10
        X(I1,I2)=X(I1-2,I2)
   30 CONTINUE
      DO 40 I2=4,10
      DO 40 I1=4,10
        X(I1,I2)=X(I1-3,I2)
   40 CONTINUE
      DO 50 I2=4,10
      DO 50 I1=4,10
        B(I1,I2)=B(I1-3,I2)
   50 CONTINUE
      DO 60 I2=4,9
      DO 60 I1=4,10
        B(I1,I2)=B(I1,I2+1)
        H(I1,I2)=H(I1,I2+1)
        V(I1,I2)=V(I1,I2+1)
   60 CONTINUE
      DO 70 I2=1,7
      DO 70 I1=10,40
        B(I1,I2)=B(I1,I2+3)
        H(I1,I2)=H(I1,I2+3)
        V(I1,I2)=V(I1,I2+3)
   70 CONTINUE
      DO 80 I2=10,40
      DO 80 I1=10,40
        A(I1,I2)=B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=B(I1,I2+3)*F(I1,I2-1)+MAX(G(I1,I2-4),E(I1,2))
        H(I1,I2)=H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(H(I1,I2+3)))+ABS(W(I1,I2+1))
        R(I1,I2)=SQRT(ABS(S(I1,I2+3)))/REAL(X(I1,I2+2))
        T(I1,I2)=INT(U(I1,I2+3))*SIN(U(I1,I2+3))
        V(I1,I2)=V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=V(I1,I2+3)+Y(I1,I2-2)
   80 CONTINUE
      END
      SUBROUTINE SUB2(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      INTEGER     A(50,50),B(50,50),TEMPI
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50),TEMPR
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50),TEMPC
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,9
      DO 10 I1=2,9
        TEMPI   =A(I1-1,I2)
        A(I1,I2)=TEMPI
   10 CONTINUE
      DO 20 I2=2,9
      DO 20 I1=2,9
        TEMPC   =X(I1-1,I2)
        X(I1,I2)=TEMPC
   20 CONTINUE
      DO 80 I2=10,40
      DO 80 I1=10,40
        TEMPI   =B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=TEMPI    *F(I1,I2-1)+MAX(G(I1,I2-4),TEMPI)
        TEMPR   =H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(TEMPR))+ABS(W(I1,I2+1))-R(I1,I2)
        TEMPR   =SQRT(ABS(S(I1,I2+3)))/REAL(TEMPR)
        T(I1,I2)=INT(U(I1,I2+3))*SIN(TEMPR    )
        TEMPC   =V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=TEMPC     +Y(I1,I2-2)+TEMPR
   80 CONTINUE
      END
      SUBROUTINE SUB3(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,
     *                N10,N50)
      INTEGER     A(50,50),B(50,50)
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50)
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50)
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,N10-1
      DO 10 I1=2,N10-1
        A(I1,I2)=A(I1-1,I2)
   10 CONTINUE
      DO 20 I2=2,N10-1
      DO 20 I1=2,N10-1
        X(I1,I2)=X(I1-1,I2)
   20 CONTINUE
      DO 30 I2=3,N10
      DO 30 I1=3,N10
        X(I1,I2)=X(I1-2,I2)
   30 CONTINUE
      DO 40 I2=4,N10
      DO 40 I1=4,N10
        X(I1,I2)=X(I1-3,I2)
   40 CONTINUE
      DO 50 I2=4,N10
      DO 50 I1=4,N10
        B(I1,I2)=B(I1-3,I2)
   50 CONTINUE
      DO 60 I2=4,N10-1
      DO 60 I1=4,N10
        B(I1,I2)=B(I1,I2+1)
        H(I1,I2)=H(I1,I2+1)
        V(I1,I2)=V(I1,I2+1)
   60 CONTINUE
      DO 70 I2=1,N10-3
      DO 70 I1=10,N10
        B(I1,I2)=B(I1,I2+3)
        H(I1,I2)=H(I1,I2+3)
        V(I1,I2)=V(I1,I2+3)
   70 CONTINUE
      DO 80 I2=N10,N50-10
      DO 80 I1=N10,N50-10
        A(I1,I2)=B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=B(I1,I2+3)*F(I1,I2-1)+MAX(G(I1,I2-4),E(I1,2))
        H(I1,I2)=H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(H(I1,I2+3)))+ABS(W(I1,I2+1))
        R(I1,I2)=SQRT(ABS(S(I1,I2+3)))/REAL(X(I1,I2+2))
        T(I1,I2)=INT(U(I1,I2+3))*SIN(U(I1,I2+3))
        V(I1,I2)=V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=V(I1,I2+3)+Y(I1,I2-2)
   80 CONTINUE
      END
      SUBROUTINE SUB4(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,
     *                N10,N50)
      INTEGER     A(50,50),B(50,50),TEMPI
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50),TEMPR
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50),TEMPC
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,N10-1
      DO 10 I1=2,N10-1
        TEMPI   =A(I1-1,I2)
        A(I1,I2)=TEMPI
   10 CONTINUE
      DO 20 I2=2,N10-1
      DO 20 I1=2,N10-1
        TEMPC   =X(I1-1,I2)
        X(I1,I2)=TEMPC
   20 CONTINUE
      DO 80 I2=10,N50-10
      DO 80 I1=10,N50-10
        TEMPI   =B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=TEMPI    *F(I1,I2-1)+MAX(G(I1,I2-4),TEMPI)
        TEMPR   =H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(TEMPR))+ABS(W(I1,I2+1))-R(I1,I2)
        TEMPR   =SQRT(ABS(S(I1,I2+3)))/REAL(TEMPR)
        T(I1,I2)=INT(U(I1,I2+3))*SIN(TEMPR    )
        TEMPC   =V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=TEMPC     +Y(I1,I2-2)+TEMPR
   80 CONTINUE
      END
      SUBROUTINE SUB5(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      INTEGER     A(50,50),B(50,50)
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50)
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50)
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,9
      DO 10 I1=2,9
        IF(B(I1,I2).GT.10) THEN
        A(I1,I2)=A(I1-1,I2)
        ENDIF
   10 CONTINUE
      DO 20 I2=2,9
      DO 20 I1=2,9
        IF(S(I1,I2).GT.5.0) THEN
        X(I1,I2)=X(I1-1,I2)
        ENDIF
   20 CONTINUE
      DO 30 I2=3,10
      DO 30 I1=3,10
        IF(S(I1,I2).GT.5.0) GOTO 30
        X(I1,I2)=X(I1-2,I2)
   30 CONTINUE
      DO 40 I2=4,10
      DO 40 I1=4,10
        IF(B(I1,I2).GT.5.0) THEN
        X(I1,I2)=X(I1-3,I2)
        ENDIF
   40 CONTINUE
      DO 50 I2=4,10
      DO 50 I1=4,10
        IF(B(I1,I2).GT.5.0) THEN
        B(I1,I2)=B(I1-3,I2)
        ENDIF
   50 CONTINUE
      DO 60 I2=4,9
      DO 60 I1=4,10
        IF(E(I1,I2)) 61,62,63
   61   B(I1,I2)=B(I1,I2+1)
   62   H(I1,I2)=H(I1,I2+1)
   63   V(I1,I2)=V(I1,I2+1)
   60 CONTINUE
      DO 70 I2=1,7
      DO 70 I1=10,40
        IF(B(I1,I2).GT.5.0) THEN
        B(I1,I2)=B(I1,I2+3)
        ELSE
        H(I1,I2)=H(I1,I2+3)
        V(I1,I2)=V(I1,I2+3)
        ENDIF
   70 CONTINUE
      DO 80 I2=10,40
      DO 80 I1=10,40
        IF(E(I1,I2)) 81,82,83
   81   A(I1,I2)=B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)/A(I1,2)
        E(I1,I2)=B(I1,I2+3)*F(I1,I2-1)+MAX(G(I1,I2-4),E(I1,2))
        H(I1,I2)=H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
   82   P(I1,I2)=SQRT(ABS(H(I1,I2+3)))+ABS(W(I1,I2+1))
        R(I1,I2)=SQRT(ABS(S(I1,I2+3)))/REAL(X(I1,I2+2))
   83   T(I1,I2)=INT(U(I1,I2+3))*SIN(U(I1,I2+3))
        V(I1,I2)=V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=V(I1,I2+3)+Y(I1,I2-2)
   80 CONTINUE
      END
      SUBROUTINE SUB6(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y)
      INTEGER     A(50,50),B(50,50),TEMPI
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50),TEMPR
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50),TEMPC
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,9
      DO 10 I1=2,9
        IF(B(I2,I1).LT.10)THEN
        TEMPI   =A(I1-1,I2)
        A(I1,I2)=TEMPI
        ENDIF
   10 CONTINUE

      DO 20 I2=2,9
      DO 20 I1=2,9
        IF(B(I2,I1).LT.10)THEN
        TEMPC   =X(I1-1,I2)
        ENDIF
        X(I1,I2)=TEMPC
   20 CONTINUE
      DO 80 I2=10,40
      DO 80 I1=10,40
        TEMPI   =B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=TEMPI    *F(I1,I2-1)+MAX(G(I1,I2-4),TEMPI)
        IF(Q(I1,I2).GT.0.0)THEN
        TEMPR   =H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(TEMPR))+ABS(W(I1,I2+1))-R(I1,I2)
        ELSE
        TEMPR   =SQRT(ABS(S(I1,I2+3)))-REAL(TEMPI)
        T(I1,I2)=INT(U(I1,I2+3))*SIN(ABS(TEMPR)    )
        ENDIF
        TEMPC   =V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=TEMPC     +Y(I1,I2-2)+TEMPR
   80 CONTINUE
      END
      SUBROUTINE SUB7(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,
     *                N10,N50)
      INTEGER     A(50,50),B(50,50)
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50)
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50)
      COMPLEX     X(50,50),Y(50,50)
      DO 10 I2=2,N10-1
      DO 10 I1=2,N10-1
        IF(Q(I1,I2).LT.0) GO TO 10
        A(I1,I2)=A(I1-1,I2)
   10 CONTINUE
      DO 80 I2=N10,N50-10
      DO 80 I1=N10,N50-10
        IF(Q(I1,I2).GE.0)THEN
        A(I1,I2)=B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=B(I1,I2+3)*F(I1,I2-1)+MAX(G(I1,I2-4),E(I1,2))
        IF(Q(I1,I2).GE.0)THEN
        H(I1,I2)=H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        IF(Q(I1,I2).GE.0)THEN
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(H(I1,I2+3)))+ABS(W(I1,I2+1))
        IF(Q(I1,I2).GE.0)THEN
        R(I1,I2)=SQRT(ABS(S(I1,I2+3)))/REAL(X(I1,I2+2))
        T(I1,I2)=INT(U(I1,I2+3))*SIN(U(I1,I2+3))
        V(I1,I2)=V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        IF(Q(I1,I2).GE.0)THEN
        X(I1,I2)=V(I1,I2+3)+Y(I1,I2-2)
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   80 CONTINUE
      END
      SUBROUTINE SUB8(A,B,C,D,E,F,G,H,O,P,Q,R,S,T,U,V,W,X,Y,
     *                N10,N50)
      INTEGER     A(50,50),B(50,50),TEMPI
      INTEGER     C(50,50),D(50,50)
      INTEGER     E(50,50),F(50,50)
      INTEGER     G(50,50)
      REAL*8      H(50,50),O(50,50),TEMPR
      REAL*8      P(50,50),Q(50,50)
      REAL*8      R(50,50),S(50,50)
      REAL*8      T(50,50),U(50,50)
      COMPLEX     V(50,50),W(50,50),TEMPC
      COMPLEX     X(50,50),Y(50,50)
      DO 20 I2=2,N10-1
      DO 20 I1=2,N10-1
        IF(B(I1,I2).LE.3.0)THEN
        TEMPC   =X(I1-1,I2)
        X(I1,I2)=TEMPC
        ENDIF
   20 CONTINUE
      DO 80 I2=10,N50-10
      DO 80 I1=10,N50-10
        TEMPI   =B(I1,I2+3)+C(I1,I2-1)+D(I1,I2-4)*E(I1,2)
        E(I1,I2)=TEMPI    *F(I1,I2-1)+MAX(G(I1,I2-4),TEMPI)
        IF(E(I1,I2))81,82,83
   81   TEMPR   =H(I1,I2+3)+A(I1,I2-2)-Q(I1,I2)
        H(I1,I2)=SQRT(ABS(H(I1,I2+3)))+EXP(O(I1,I2+1))
        P(I1,I2)=SQRT(ABS(TEMPR))+ABS(W(I1,I2+1))-R(I1,I2)
   82   TEMPR   =SQRT(ABS(S(I1,I2+3)))/REAL(TEMPI)
        T(I1,I2)=INT(U(I1,I2+3))*SIN(TEMPR    )
   83   TEMPC   =V(I1,I2+3)+W(I1,I2-2)+CMPLX(A(I1,I2-2))
        X(I1,I2)=TEMPC     +Y(I1,I2-2)+TEMPI
   80 CONTINUE
      END
