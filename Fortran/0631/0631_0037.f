      INTEGER  A(5,5,5,5,5),B(5,5,5,5,5),C(5,5,5,5,5)
      INTEGER  D(5,5,5,5,5),E(5,5,5,5,5),F(5,5,5,5,5)
      INTEGER  CI(5,5,5,5,5)
      INTEGER  TEMPI
      REAL*8   G(5,5,5,5,5),H(5,5,5,5,5),O(5,5,5,5,5)
      REAL*8   P(5,5,5,5,5),Q(5,5,5,5,5),R(5,5,5,5,5)
      REAL*8   CR(5,5,5,5,5)
      REAL*8   TEMPR
      COMPLEX*16 S(5,5,5,5,5),T(5,5,5,5,5),U(5,5,5,5,5)
      COMPLEX*16 V(5,5,5,5,5),W(5,5,5,5,5),X(5,5,5,5,5)
      COMPLEX*16 CC(5,5,5,5,5)
      COMPLEX*16 TEMPC
      DO 10 I1=1,5
      DO 10 I2=1,5
      DO 10 I3=1,5
      DO 10 I4=1,5
      DO 10 I5=1,5
        IF((I1+I2).GT.(I4+I5))THEN
          CI(I1,I2,I3,I4,I5)=1
        ELSEIF((I1+I2).LT.(I4+I5))THEN
          CI(I1,I2,I3,I4,I5)=-1
        ELSE
          CI(I1,I2,I3,I4,I5)=0
        ENDIF
   10 CONTINUE
      DO 20 I1=1,5
      DO 20 I2=1,5
      DO 20 I3=1,5
      DO 20 I4=1,5
      DO 20 I5=1,5
        IF((I1*I2).GT.(I4*I5))THEN
          CR(I1,I2,I3,I4,I5)=1.0
          CC(I1,I2,I3,I4,I5)=DCMPLX(1.0)
        ELSEIF((I1*I2).LT.(I4*I5))THEN
          CR(I1,I2,I3,I4,I5)=-1.0
          CC(I1,I2,I3,I4,I5)=DCMPLX(-1.0)
        ELSE
          CR(I1,I2,I3,I4,I5)=0.0
          CC(I1,I2,I3,I4,I5)=DCMPLX(0.0)
        ENDIF
   20 CONTINUE
      DO 30 I1=1,5
      DO 30 I2=1,5
      DO 30 I3=1,5
      DO 30 I4=1,5
      DO 30 I5=1,5
        A(I1,I2,I3,I4,I5)=1
        B(I1,I2,I3,I4,I5)=I1
        C(I1,I2,I3,I4,I5)=I2
        D(I1,I2,I3,I4,I5)=I1+I2
        E(I1,I2,I3,I4,I5)=13+1
        F(I1,I2,I3,I4,I5)=I5
        G(I1,I2,I3,I4,I5)=DFLOAT(1)
        H(I1,I2,I3,I4,I5)=DFLOAT(I1)
        O(I1,I2,I3,I4,I5)=DFLOAT(I2)
        P(I1,I2,I3,I4,I5)=DFLOAT(I1+I2)
        Q(I1,I2,I3,I4,I5)=DFLOAT(I3+1)
        R(I1,I2,I3,I4,I5)=DFLOAT(I5)
        S(I1,I2,I3,I4,I5)=DCMPLX(1)
        T(I1,I2,I3,I4,I5)=DCMPLX(I1)
        U(I1,I2,I3,I4,I5)=DCMPLX(I2)
        V(I1,I2,I3,I4,I5)=DCMPLX(I1+I2)
        W(I1,I2,I3,I4,I5)=DCMPLX(I3+1)
        X(I1,I2,I3,I4,I5)=DCMPLX(I5)
   30 CONTINUE
      TEMPI=1
      TEMPR=1.0
      TEMPC=(1.0,0.0)
      N4=4
      N5=5
      CALL SUB1(A,B,C,D,E,F,CI,
     *          G,H,O,P,Q,R,CR,
     *          S,T,U,V,W,X,CC)
      CALL SUB2(A,B,C,D,E,F,CI,
     *          G,H,O,P,Q,R,CR,
     *          S,T,U,V,W,X,CC,N4,N5)
      WRITE(6,*)(((((A(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((B(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((C(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((D(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((E(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((F(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((G(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((H(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((O(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((P(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((Q(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((R(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((S(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((T(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((U(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((V(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((W(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      WRITE(6,*)(((((X(I1,I2,I3,I4,I5),I1=1,5,2),
     *                                 I2=2,5,2),
     *                                 I3=1,5,2),
     *                                 I4=1,5,2),
     *                                 I5=2,5,2)
      END
      SUBROUTINE SUB1(A,B,C,D,E,F,CI,
     *                G,H,O,P,Q,R,CR,
     *                S,T,U,V,W,X,CC)
      INTEGER  A(5,5,5,5,5),B(5,5,5,5,5),C(5,5,5,5,5)
      INTEGER  D(5,5,5,5,5),E(5,5,5,5,5),F(5,5,5,5,5)
      INTEGER  CI(5,5,5,5,5)
      INTEGER  TEMPI
      REAL*8   G(5,5,5,5,5),H(5,5,5,5,5),O(5,5,5,5,5)
      REAL*8   P(5,5,5,5,5),Q(5,5,5,5,5),R(5,5,5,5,5)
      REAL*8   CR(5,5,5,5,5)
      REAL*8   TEMPR
      COMPLEX*16 S(5,5,5,5,5),T(5,5,5,5,5),U(5,5,5,5,5)
      COMPLEX*16 V(5,5,5,5,5),W(5,5,5,5,5),X(5,5,5,5,5)
      COMPLEX*16 CC(5,5,5,5,5)
      COMPLEX*16 TEMPC
      DO 20 I1=1,5
      DO 20 I2=1,5
      DO 20 I3=1,5
      DO 20 I4=1,5
      DO 20 I5=1,5
        IF(CI(I1,I2,I3,I4,I5).GT.0.AND.
     *     CC(I1,I2,I3,I4,I5).NE.(0.0,0.0).AND.
     *     CR(I1,I2,I3,I4,I5).LT.1.0)THEN
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          B(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+B(I1,I2,I3,I4,I5)
          D(I1,I2,I3,I4,I5)=E(I1,I2,I3,I4,I5)*F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)*D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)*F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)+O(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          P(I1,I2,I3,I4,I5)=Q(I1,I2,I3,I4,I5)-R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)-P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=P(I1,I2,I3,I4,I5)-Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)-O(I1,I2,I3,I4,I5)
          S(I1,I2,I3,I4,I5)=T(I1,I2,I3,I4,I5)+U(I1,I2,I3,I4,I5)
          T(I1,I2,I3,I4,I5)=U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)-X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=X(I1,I2,I3,I4,I5)-V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)-W(I1,I2,I3,I4,I5)
        ENDIF
   20 CONTINUE
      DO 30 I1=1,5
      DO 30 I2=1,5
      DO 30 I3=1,5
      DO 30 I4=1,5
      DO 30 I5=1,5
        IF(CI(I1,I2,I3,I4,I5).LT.1.OR.
     *     CR(I1,I2,I3,I4,I5).GT.-2.0.OR.
     *     ABS(CC(I1,I2,I3,I4,I5)).GT.0.0)THEN
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          TEMPI            =A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+TEMPI
          D(I1,I2,I3,I4,I5)=TEMPI            +F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)-D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          TEMPR            =Q(I1,I2,I3,I4,I5)-R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)-P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=TEMPR            +Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)*TEMPR
          S(I1,I2,I3,I4,I5)=                  U(I1,I2,I3,I4,I5)
          TEMPC            =U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=TEMPC            +V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)-W(I1,I2,I3,I4,I5)
        ELSE
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          TEMPI            =A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+TEMPI
          D(I1,I2,I3,I4,I5)=TEMPI            -F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)+D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)/F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
        ENDIF
   30 CONTINUE
      DO 40 I1=1,4
      DO 40 I2=1,4
      DO 40 I3=1,4
      DO 40 I4=1,4
      DO 40 I5=1,4
        IF(CI(I1,I2,I3,I4,I5).GT.0.AND.
     *     CR(I1,I2,I3,I4,I5).LT.1.0.OR.
     *     CC(I1,I2,I3,I4,I5).NE.(0.0,0.0))GOTO 60
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          B(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+B(I1,I2,I3,I4,I5)
          D(I1,I2,I3,I4,I5)=E(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)+D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)+O(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          P(I1,I2,I3,I4,I5)=Q(I1,I2,I3,I4,I5)+R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=P(I1,I2,I3,I4,I5)+Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)*O(I1,I2,I3,I4,I5)
          S(I1,I2,I3,I4,I5)=T(I1,I2,I3,I4,I5)+U(I1,I2,I3,I4,I5)
          T(I1,I2,I3,I4,I5)=U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=X(I1,I2,I3,I4,I5)+V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)+W(I1,I2,I3,I4,I5)
   60   CONTINUE
   40 CONTINUE
      DO 50 I1=1,5
      DO 50 I2=1,5
      DO 50 I3=1,5
      DO 50 I4=1,5
      DO 50 I5=1,5
        IF(CI(I1,I2,I3,I4,I5))70,80,90
   70     A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          TEMPI            =A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+TEMPI
          D(I1,I2,I3,I4,I5)=TEMPI            +F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)+D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          TEMPR            =Q(I1,I2,I3,I4,I5)+R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=TEMPR            -Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)+TEMPR
   80     S(I1,I2,I3,I4,I5)=                 +U(I1,I2,I3,I4,I5)
          TEMPC            =U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=TEMPC            -V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)-W(I1,I2,I3,I4,I5)
   90   CONTINUE
   50 CONTINUE
      END
      SUBROUTINE SUB2(A,B,C,D,E,F,CI,
     *                G,H,O,P,Q,R,CR,
     *                S,T,U,V,W,X,CC,N4,N5)
      INTEGER  A(5,5,5,5,5),B(5,5,5,5,5),C(5,5,5,5,5)
      INTEGER  D(5,5,5,5,5),E(5,5,5,5,5),F(5,5,5,5,5)
      INTEGER  CI(5,5,5,5,5)
      INTEGER  TEMPI
      REAL*8   G(5,5,5,5,5),H(5,5,5,5,5),O(5,5,5,5,5)
      REAL*8   P(5,5,5,5,5),Q(5,5,5,5,5),R(5,5,5,5,5)
      REAL*8   CR(5,5,5,5,5)
      REAL*8   TEMPR
      COMPLEX*16 S(5,5,5,5,5),T(5,5,5,5,5),U(5,5,5,5,5)
      COMPLEX*16 V(5,5,5,5,5),W(5,5,5,5,5),X(5,5,5,5,5)
      COMPLEX*16 CC(5,5,5,5,5)
      COMPLEX*16 TEMPC
      DO 20 I1=1,N5
      DO 20 I2=1,N5
      DO 20 I3=1,N5
      DO 20 I4=1,N5
      DO 20 I5=1,N5
        IF(CI(I1,I2,I3,I4,I5).GT.0.AND.
     *     CC(I1,I2,I3,I4,I5).NE.(0.0,0.0).AND.
     *     CR(I1,I2,I3,I4,I5).LT.1.0)THEN
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          B(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+B(I1,I2,I3,I4,I5)
          D(I1,I2,I3,I4,I5)=E(I1,I2,I3,I4,I5)*F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)*D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)*F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)+O(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          P(I1,I2,I3,I4,I5)=Q(I1,I2,I3,I4,I5)-R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)-P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=P(I1,I2,I3,I4,I5)-Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)-O(I1,I2,I3,I4,I5)
          S(I1,I2,I3,I4,I5)=T(I1,I2,I3,I4,I5)+U(I1,I2,I3,I4,I5)
          T(I1,I2,I3,I4,I5)=U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)-X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=X(I1,I2,I3,I4,I5)-V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)-W(I1,I2,I3,I4,I5)
        ENDIF
   20 CONTINUE
      DO 30 I1=1,N5
      DO 30 I2=1,N5
      DO 30 I3=1,N5
      DO 30 I4=1,N5
      DO 30 I5=1,N5
        IF(CI(I1,I2,I3,I4,I5).LT.1.OR.
     *     CR(I1,I2,I3,I4,I5).GT.-2.0.OR.
     *     ABS(CC(I1,I2,I3,I4,I5)).GT.0.0)THEN
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          TEMPI            =A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+TEMPI
          D(I1,I2,I3,I4,I5)=TEMPI            +F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)-D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          TEMPR            =Q(I1,I2,I3,I4,I5)-R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)-P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=TEMPR            +Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)*TEMPR
          S(I1,I2,I3,I4,I5)=                 +U(I1,I2,I3,I4,I5)
          TEMPC            =U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=TEMPC            +V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)-W(I1,I2,I3,I4,I5)
        ELSE
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          TEMPI            =A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+TEMPI
          D(I1,I2,I3,I4,I5)=TEMPI            -F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)+D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)/F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
        ENDIF
   30 CONTINUE
      DO 40 I1=1,N4
      DO 40 I2=1,N4
      DO 40 I3=1,N4
      DO 40 I4=1,N4
      DO 40 I5=1,N4
        IF(CI(I1,I2,I3,I4,I5).GT.0.AND.
     *     CR(I1,I2,I3,I4,I5).LT.1.0.OR.
     *     CC(I1,I2,I3,I4,I5).NE.(0.0,0.0))GOTO 60
          A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          B(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+B(I1,I2,I3,I4,I5)
          D(I1,I2,I3,I4,I5)=E(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)+D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)+O(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          P(I1,I2,I3,I4,I5)=Q(I1,I2,I3,I4,I5)+R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=P(I1,I2,I3,I4,I5)+Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)*O(I1,I2,I3,I4,I5)
          S(I1,I2,I3,I4,I5)=T(I1,I2,I3,I4,I5)+U(I1,I2,I3,I4,I5)
          T(I1,I2,I3,I4,I5)=U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=X(I1,I2,I3,I4,I5)+V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)+W(I1,I2,I3,I4,I5)
   60   CONTINUE
   40 CONTINUE
      DO 50 I1=1,N5
      DO 50 I2=1,N5
      DO 50 I3=1,N5
      DO 50 I4=1,N5
      DO 50 I5=1,N5
        IF(CI(I1,I2,I3,I4,I5))70,80,90
   70     A(I1,I2,I3,I4,I5)=B(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          TEMPI            =A(I1,I2,I3,I4,I5)+C(I1,I2,I3,I4,I5)
          C(I1,I2,I3,I4,I5)=A(I1,I2,I3,I4,I5)+TEMPI
          D(I1,I2,I3,I4,I5)=TEMPI            +F(I1,I2,I3,I4,I5)
          E(I1,I2,I3,I4,I5)=F(I1,I2,I3,I4,I5)+D(I1,I2,I3,I4,I5)
          F(I1,I2,I3,I4,I5)=D(I1,I2,I3,I4,I5)+F(I1,I2,I3,I4,I5)
     *                     /A(I1,I2,I3,I4,I5)*B(I1,I2,I3,I4,I5)
          G(I1,I2,I3,I4,I5)=H(I1,I2,I3,I4,I5)
          H(I1,I2,I3,I4,I5)=O(I1,I2,I3,I4,I5)+G(I1,I2,I3,I4,I5)
          O(I1,I2,I3,I4,I5)=G(I1,I2,I3,I4,I5)+H(I1,I2,I3,I4,I5)
          TEMPR            =Q(I1,I2,I3,I4,I5)+R(I1,I2,I3,I4,I5)
          Q(I1,I2,I3,I4,I5)=R(I1,I2,I3,I4,I5)+P(I1,I2,I3,I4,I5)
          R(I1,I2,I3,I4,I5)=TEMPR            -Q(I1,I2,I3,I4,I5)
     *                     /G(I1,I2,I3,I4,I5)+TEMPR
   80     S(I1,I2,I3,I4,I5)=                 +U(I1,I2,I3,I4,I5)
          TEMPC            =U(I1,I2,I3,I4,I5)+S(I1,I2,I3,I4,I5)
          U(I1,I2,I3,I4,I5)=S(I1,I2,I3,I4,I5)+T(I1,I2,I3,I4,I5)
          V(I1,I2,I3,I4,I5)=W(I1,I2,I3,I4,I5)+X(I1,I2,I3,I4,I5)
          W(I1,I2,I3,I4,I5)=TEMPC            -V(I1,I2,I3,I4,I5)
          X(I1,I2,I3,I4,I5)=V(I1,I2,I3,I4,I5)-W(I1,I2,I3,I4,I5)
   90   CONTINUE
   50 CONTINUE
      END
