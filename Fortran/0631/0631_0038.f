      INTEGER  A(5,5,5,5,5,2,2),B(5,5,5,5,5,2,2),C(5,5,5,5,5,2,2)
      INTEGER  D(5,5,5,5,5,2,2),E(5,5,5,5,5,2,2),F(5,5,5,5,5,2,2)
      INTEGER  CI(5,5,5,5,5,2,2)
      INTEGER  TEMPI
      REAL*8   G(5,5,5,5,5,2,2),H(5,5,5,5,5,2,2),O(5,5,5,5,5,2,2)
      REAL*8   P(5,5,5,5,5,2,2),Q(5,5,5,5,5,2,2),R(5,5,5,5,5,2,2)
      REAL*8   CR(5,5,5,5,5,2,2)
      REAL*8   TEMPR
      COMPLEX*16 S(5,5,5,5,5,2,2),T(5,5,5,5,5,2,2),U(5,5,5,5,5,2,2)
      COMPLEX*16 V(5,5,5,5,5,2,2),W(5,5,5,5,5,2,2),X(5,5,5,5,5,2,2)
      COMPLEX*16 CC(5,5,5,5,5,2,2)
      COMPLEX*16 TEMPC
      DO 10 I7=1,5
      DO 10 I6=1,5
      DO 10 I5=1,5
      DO 10 I4=1,5
      DO 10 I3=1,5
      DO 10 I2=1,2
      DO 10 I1=1,2
        IF((I1+I2).GT.(I4+I5))THEN
          CI(I7,I6,I5,I4,I3,I2,I1)=1
        ELSEIF((I1+I2).LT.(I4+I5))THEN
          CI(I7,I6,I5,I4,I3,I2,I1)=-1
        ELSE
          CI(I7,I6,I5,I4,I3,I2,I1)=0
        ENDIF
   10 CONTINUE
      DO 20 I7=1,5
      DO 20 I6=1,5
      DO 20 I5=1,5
      DO 20 I4=1,5
      DO 20 I3=1,5
      DO 20 I2=1,2
      DO 20 I1=1,2
        IF((I1*I2).GT.(I4*I5))THEN
          CR(I7,I6,I5,I4,I3,I2,I1)=1.0
          CC(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(1.0)
        ELSEIF((I1*I2).LT.(I4*I5))THEN
          CR(I7,I6,I5,I4,I3,I2,I1)=-1.0
          CC(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(-1.0)
        ELSE
          CR(I7,I6,I5,I4,I3,I2,I1)=0.0
          CC(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(0.0)
        ENDIF
   20 CONTINUE
      DO 30 I7=1,5
      DO 30 I6=1,5
      DO 30 I5=1,5
      DO 30 I4=1,5
      DO 30 I3=1,5
      DO 30 I2=1,2
      DO 30 I1=1,2
        A(I7,I6,I5,I4,I3,I2,I1)=1
        B(I7,I6,I5,I4,I3,I2,I1)=I1
        C(I7,I6,I5,I4,I3,I2,I1)=I2
        D(I7,I6,I5,I4,I3,I2,I1)=I1+I2
        E(I7,I6,I5,I4,I3,I2,I1)=13+1
        F(I7,I6,I5,I4,I3,I2,I1)=I5
        G(I7,I6,I5,I4,I3,I2,I1)=DFLOAT(1)
        H(I7,I6,I5,I4,I3,I2,I1)=DFLOAT(I1)
        O(I7,I6,I5,I4,I3,I2,I1)=DFLOAT(I2)
       P(I7,I6,I5,I4,I3,I2,I1) =DFLOAT(I1+I2)
        Q(I7,I6,I5,I4,I3,I2,I1)=DFLOAT(I3+1)
        R(I7,I6,I5,I4,I3,I2,I1)=DFLOAT(I5)
        S(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(1)
        T(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(I1)
        U(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(I2)
        V(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(I1+I2)
        W(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(I3+1)
        X(I7,I6,I5,I4,I3,I2,I1)=DCMPLX(I5)
   30 CONTINUE
      TEMPI=1
      TEMPR=1.0
      TEMPC=(1.0,0.0)
      N2=2
      N4=4
      N5=5
      CALL SUB1(A,B,C,D,E,F,CI,
     *          G,H,O,P,Q,R,CR,
     *          S,T,U,V,W,X,CC)
      CALL SUB2(A,B,C,D,E,F,CI,
     *          G,H,O,P,Q,R,CR,
     *          S,T,U,V,W,X,CC,N4,N5,N2)
      WRITE(6,*)(((((((A(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((B(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((C(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((D(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((E(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((F(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((G(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((H(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((O(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((P(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((Q(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((R(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((S(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((T(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((U(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((V(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((W(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      WRITE(6,*)(((((((X(I7,I6,I5,I4,I3,I2,I1),I7=1,5,2),
     *                                 I6=2,5,3),
     *                                 I5=1,5,3),
     *                                 I4=1,5,3),
     *                                 I3=2,5,2),
     *                                 I2=1,2),
     *                                 I1=1,2)
      END
      SUBROUTINE SUB1(A,B,C,D,E,F,CI,
     *                G,H,O,P,Q,R,CR,
     *                S,T,U,V,W,X,CC)
      INTEGER  A(5,5,5,5,5,2,2),B(5,5,5,5,5,2,2),C(5,5,5,5,5,2,2)
      INTEGER  D(5,5,5,5,5,2,2),E(5,5,5,5,5,2,2),F(5,5,5,5,5,2,2)
      INTEGER  CI(5,5,5,5,5,2,2)
      INTEGER  TEMPI
      REAL*8   G(5,5,5,5,5,2,2),H(5,5,5,5,5,2,2),O(5,5,5,5,5,2,2)
      REAL*8   P(5,5,5,5,5,2,2),Q(5,5,5,5,5,2,2),R(5,5,5,5,5,2,2)
      REAL*8   CR(5,5,5,5,5,2,2)
      REAL*8   TEMPR
      COMPLEX*16 S(5,5,5,5,5,2,2),T(5,5,5,5,5,2,2),U(5,5,5,5,5,2,2)
      COMPLEX*16 V(5,5,5,5,5,2,2),W(5,5,5,5,5,2,2),X(5,5,5,5,5,2,2)
      COMPLEX*16 CC(5,5,5,5,5,2,2)
      COMPLEX*16 TEMPC
      DO 20 I7=1,5
      DO 20 I6=1,5
      DO 20 I5=1,5
      DO 20 I4=1,5
      DO 20 I3=1,5
      DO 20 I2=1,2
      DO 20 I1=1,2
        IF(CI(I7,I6,I5,I4,I3,I2,I1).GT.0.AND.
     *     CC(I7,I6,I5,I4,I3,I2,I1).NE.(0.0,0.0).AND.
     *     CR(I7,I6,I5,I4,I3,I2,I1).LT.1.0)THEN
          A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          B(I7,I6,I5,I4,I3,I2,I1)=A(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          C(I7,I6,I5,I4,I3,I2,I1)=A(I7,I6,I5,I4,I3,I2,I1)+
     *                            B(I7,I6,I5,I4,I3,I2,I1)
          D(I7,I6,I5,I4,I3,I2,I1)=E(I7,I6,I5,I4,I3,I2,I1)*
     *                            F(I7,I6,I5,I4,I3,I2,I1)
          E(I7,I6,I5,I4,I3,I2,I1)=F(I7,I6,I5,I4,I3,I2,I1)*1*
     *                            D(I7,I6,I5,I4,I3,I2,I1)
          F(I7,I6,I5,I4,I3,I2,I1)=D(I7,I6,I5,I4,I3,I2,I1)+2*
     *                            F(I7,I6,I5,I4,I3,I2,I1)
     *                     /A(I7,I6,I5,I4,I3,I2,I1)
          G(I7,I6,I5,I4,I3,I2,I1)=H(I7,I6,I5,I4,I3,I2,I1)+
     *                            O(I7,I6,I5,I4,I3,I2,I1)
          H(I7,I6,I5,I4,I3,I2,I1)=O(I7,I6,I5,I4,I3,I2,I1)+
     *                            G(I7,I6,I5,I4,I3,I2,I1)
          O(I7,I6,I5,I4,I3,I2,I1)=G(I7,I6,I5,I4,I3,I2,I1)+
     *                            H(I7,I6,I5,I4,I3,I2,I1)
         P(I7,I6,I5,I4,I3,I2,I1) =Q(I7,I6,I5,I4,I3,I2,I1)-
     *                            R(I7,I6,I5,I4,I3,I2,I1)
          Q(I7,I6,I5,I4,I3,I2,I1)=R(I7,I6,I5,I4,I3,I2,I1)-1000
     *                     /G(I7,I6,I5,I4,I3,I2,I1)
          S(I7,I6,I5,I4,I3,I2,I1)=T(I7,I6,I5,I4,I3,I2,I1)
          T(I7,I6,I5,I4,I3,I2,I1)=U(I7,I6,I5,I4,I3,I2,I1)
          U(I7,I6,I5,I4,I3,I2,I1)=S(I7,I6,I5,I4,I3,I2,I1)
          V(I7,I6,I5,I4,I3,I2,I1)=W(I7,I6,I5,I4,I3,I2,I1)
          W(I7,I6,I5,I4,I3,I2,I1)=X(I7,I6,I5,I4,I3,I2,I1)
          X(I7,I6,I5,I4,I3,I2,I1)=V(I7,I6,I5,I4,I3,I2,I1)
        ENDIF
   20 CONTINUE
      DO 30 I7=1,5
      DO 30 I6=1,5
      DO 30 I5=1,5
      DO 30 I4=1,5
      DO 30 I3=1,5
      DO 30 I2=1,2
      DO 30 I1=1,2
        IF(CI(I7,I6,I5,I4,I3,I2,I1).LT.1.OR.
     *     CR(I7,I6,I5,I4,I3,I2,I1).GT.-2.0.OR.
     *     ABS(CC(I7,I6,I5,I4,I3,I2,I1)).GT.0.0)THEN
          A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          TEMPI            =A(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          C(I7,I6,I5,I4,I3,I2,I1)=A(I7,I6,I5,I4,I3,I2,I1)+TEMPI
          TEMPR                  =H(I7,I6,I5,I4,I3,I2,I1)
          H(I7,I6,I5,I4,I3,I2,I1)=O(I7,I6,I5,I4,I3,I2,I1)+
     *                            G(I7,I6,I5,I4,I3,I2,I1)+TEMPR
          O(I7,I6,I5,I4,I3,I2,I1)=G(I7,I6,I5,I4,I3,I2,I1)+
     *                            H(I7,I6,I5,I4,I3,I2,I1)+TEMPR
          S(I7,I6,I5,I4,I3,I2,I1)=            U(I7,I6,I5,I4,I3,I2,I1)
          TEMPC            =U(I7,I6,I5,I4,I3,I2,I1)+
     *                            S(I7,I6,I5,I4,I3,I2,I1)
          U(I7,I6,I5,I4,I3,I2,I1)=S(I7,I6,I5,I4,I3,I2,I1)+TEMPC
        ELSE
          E(I7,I6,I5,I4,I3,I2,I1)=F(I7,I6,I5,I4,I3,I2,I1)+
     *                            D(I7,I6,I5,I4,I3,I2,I1)
        ENDIF
   30 CONTINUE
      DO 40 I7=1,4
      DO 40 I6=1,4
      DO 40 I5=1,4
      DO 40 I4=1,4
      DO 40 I3=1,4
      DO 40 I2=1,1
      DO 40 I1=2,2
        IF(CI(I7,I6,I5,I4,I3,I2,I1).GT.0.AND.
     *     CR(I7,I6,I5,I4,I3,I2,I1).LT.1.0.OR.
     *     CC(I7,I6,I5,I4,I3,I2,I1).NE.(0.0,0.0))GOTO 60
          D(I7,I6,I5,I4,I3,I2,I1)=E(I7,I6,I5,I4,I3,I2,I1)+
     *                            F(I7,I6,I5,I4,I3,I2,I1)
          E(I7,I6,I5,I4,I3,I2,I1)=F(I7,I6,I5,I4,I3,I2,I1)+
     *                            D(I7,I6,I5,I4,I3,I2,I1)
          F(I7,I6,I5,I4,I3,I2,I1)=D(I7,I6,I5,I4,I3,I2,I1)+
     *                            F(I7,I6,I5,I4,I3,I2,I1)
          Q(I7,I6,I5,I4,I3,I2,I1)=R(I7,I6,I5,I4,I3,I2,I1)+
     *                            P(I7,I6,I5,I4,I3,I2,I1)
          R(I7,I6,I5,I4,I3,I2,I1)=P(I7,I6,I5,I4,I3,I2,I1)+
     *                            Q(I7,I6,I5,I4,I3,I2,I1)
          V(I7,I6,I5,I4,I3,I2,I1)=W(I7,I6,I5,I4,I3,I2,I1)+
     *                            X(I7,I6,I5,I4,I3,I2,I1)
          W(I7,I6,I5,I4,I3,I2,I1)=X(I7,I6,I5,I4,I3,I2,I1)+
     *                            V(I7,I6,I5,I4,I3,I2,I1)
          X(I7,I6,I5,I4,I3,I2,I1)=V(I7,I6,I5,I4,I3,I2,I1)+
     *                            W(I7,I6,I5,I4,I3,I2,I1)
   60   CONTINUE
   40 CONTINUE
      DO 50 I7=1,5
      DO 50 I6=1,5
      DO 50 I5=1,5
      DO 50 I4=1,5
      DO 50 I3=1,5
      DO 50 I2=1,2
      DO 50 I1=1,2
        IF(CI(I7,I6,I5,I4,I3,I2,I1))70,80,90
   70     A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          TEMPI            =A(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          G(I7,I6,I5,I4,I3,I2,I1)=H(I7,I6,I5,I4,I3,I2,I1)
          H(I7,I6,I5,I4,I3,I2,I1)=O(I7,I6,I5,I4,I3,I2,I1)+
     *                            G(I7,I6,I5,I4,I3,I2,I1)
          O(I7,I6,I5,I4,I3,I2,I1)=G(I7,I6,I5,I4,I3,I2,I1)-
     *                            H(I7,I6,I5,I4,I3,I2,I1)
          TEMPR            =Q(I7,I6,I5,I4,I3,I2,I1)+
     *                            R(I7,I6,I5,I4,I3,I2,I1)
   80     S(I7,I6,I5,I4,I3,I2,I1)=           +U(I7,I6,I5,I4,I3,I2,I1)
          TEMPC            =U(I7,I6,I5,I4,I3,I2,I1)+
     *                            S(I7,I6,I5,I4,I3,I2,I1)
   90   CONTINUE
   50 CONTINUE
      END
      SUBROUTINE SUB2(A,B,C,D,E,F,CI,
     *                G,H,O,P,Q,R,CR,
     *                S,T,U,V,W,X,CC,N4,N5,N2)
      INTEGER  A(5,5,5,5,5,2,2),B(5,5,5,5,5,2,2),C(5,5,5,5,5,2,2)
      INTEGER  D(5,5,5,5,5,2,2),E(5,5,5,5,5,2,2),F(5,5,5,5,5,2,2)
      INTEGER  CI(5,5,5,5,5,2,2)
      INTEGER  TEMPI
      REAL*8   G(5,5,5,5,5,2,2),H(5,5,5,5,5,2,2),O(5,5,5,5,5,2,2)
      REAL*8   P(5,5,5,5,5,2,2),Q(5,5,5,5,5,2,2),R(5,5,5,5,5,2,2)
      REAL*8   CR(5,5,5,5,5,2,2)
      REAL*8   TEMPR
      COMPLEX*16 S(5,5,5,5,5,2,2),T(5,5,5,5,5,2,2),U(5,5,5,5,5,2,2)
      COMPLEX*16 V(5,5,5,5,5,2,2),W(5,5,5,5,5,2,2),X(5,5,5,5,5,2,2)
      COMPLEX*16 CC(5,5,5,5,5,2,2)
      COMPLEX*16 TEMPC
      DO 20 I7=1,N5
      DO 20 I6=1,N5
      DO 20 I5=1,N5
      DO 20 I4=1,N5
      DO 20 I3=1,N5
      DO 20 I2=1,N2
      DO 20 I1=1,N2
        IF(CI(I7,I6,I5,I4,I3,I2,I1).GT.0.AND.
     *     CC(I7,I6,I5,I4,I3,I2,I1).NE.(0.0,0.0).AND.
     *     CR(I7,I6,I5,I4,I3,I2,I1).LT.1.0)THEN
          A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          B(I7,I6,I5,I4,I3,I2,I1)=A(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          C(I7,I6,I5,I4,I3,I2,I1)=A(I7,I6,I5,I4,I3,I2,I1)+
     *                            B(I7,I6,I5,I4,I3,I2,I1)
          D(I7,I6,I5,I4,I3,I2,I1)=E(I7,I6,I5,I4,I3,I2,I1)*
     *                            F(I7,I6,I5,I4,I3,I2,I1)
          E(I7,I6,I5,I4,I3,I2,I1)=F(I7,I6,I5,I4,I3,I2,I1)*1*
     *                            D(I7,I6,I5,I4,I3,I2,I1)
          F(I7,I6,I5,I4,I3,I2,I1)=D(I7,I6,I5,I4,I3,I2,I1)+2*
     *                            F(I7,I6,I5,I4,I3,I2,I1)
     *                     /A(I7,I6,I5,I4,I3,I2,I1)
          G(I7,I6,I5,I4,I3,I2,I1)=H(I7,I6,I5,I4,I3,I2,I1)+
     *                            O(I7,I6,I5,I4,I3,I2,I1)
          H(I7,I6,I5,I4,I3,I2,I1)=O(I7,I6,I5,I4,I3,I2,I1)+
     *                            G(I7,I6,I5,I4,I3,I2,I1)
          O(I7,I6,I5,I4,I3,I2,I1)=G(I7,I6,I5,I4,I3,I2,I1)+
     *                            H(I7,I6,I5,I4,I3,I2,I1)
         P(I7,I6,I5,I4,I3,I2,I1) =Q(I7,I6,I5,I4,I3,I2,I1)-
     *                            R(I7,I6,I5,I4,I3,I2,I1)
          Q(I7,I6,I5,I4,I3,I2,I1)=R(I7,I6,I5,I4,I3,I2,I1)-1000
     *                     /G(I7,I6,I5,I4,I3,I2,I1)
          S(I7,I6,I5,I4,I3,I2,I1)=T(I7,I6,I5,I4,I3,I2,I1)
          T(I7,I6,I5,I4,I3,I2,I1)=U(I7,I6,I5,I4,I3,I2,I1)
          U(I7,I6,I5,I4,I3,I2,I1)=S(I7,I6,I5,I4,I3,I2,I1)
          V(I7,I6,I5,I4,I3,I2,I1)=W(I7,I6,I5,I4,I3,I2,I1)
          W(I7,I6,I5,I4,I3,I2,I1)=X(I7,I6,I5,I4,I3,I2,I1)
          X(I7,I6,I5,I4,I3,I2,I1)=V(I7,I6,I5,I4,I3,I2,I1)
        ENDIF
   20 CONTINUE
      DO 30 I7=1,N5
      DO 30 I6=1,N5
      DO 30 I5=1,N5
      DO 30 I4=1,N5
      DO 30 I3=1,N5
      DO 30 I2=1,N2
      DO 30 I1=1,N2
        IF(CI(I7,I6,I5,I4,I3,I2,I1).LT.1.OR.
     *     CR(I7,I6,I5,I4,I3,I2,I1).GT.-2.0.OR.
     *     ABS(CC(I7,I6,I5,I4,I3,I2,I1)).GT.0.0)THEN
          A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          TEMPI            =A(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          C(I7,I6,I5,I4,I3,I2,I1)=A(I7,I6,I5,I4,I3,I2,I1)+TEMPI
          TEMPR                  =H(I7,I6,I5,I4,I3,I2,I1)
          H(I7,I6,I5,I4,I3,I2,I1)=O(I7,I6,I5,I4,I3,I2,I1)+
     *                            G(I7,I6,I5,I4,I3,I2,I1)+TEMPR
          O(I7,I6,I5,I4,I3,I2,I1)=G(I7,I6,I5,I4,I3,I2,I1)+
     *                            H(I7,I6,I5,I4,I3,I2,I1)+TEMPR
          S(I7,I6,I5,I4,I3,I2,I1)=            U(I7,I6,I5,I4,I3,I2,I1)
          TEMPC            =U(I7,I6,I5,I4,I3,I2,I1)+
     *                            S(I7,I6,I5,I4,I3,I2,I1)
          U(I7,I6,I5,I4,I3,I2,I1)=S(I7,I6,I5,I4,I3,I2,I1)+TEMPC
        ELSE
          E(I7,I6,I5,I4,I3,I2,I1)=F(I7,I6,I5,I4,I3,I2,I1)+
     *                            D(I7,I6,I5,I4,I3,I2,I1)
        ENDIF
   30 CONTINUE
      DO 40 I7=1,N4
      DO 40 I6=1,N4
      DO 40 I5=1,N4
      DO 40 I4=1,N4
      DO 40 I3=1,N4
      DO 40 I2=1,N2-1
      DO 40 I1=N2,N2
        IF(CI(I7,I6,I5,I4,I3,I2,I1).GT.0.AND.
     *     CR(I7,I6,I5,I4,I3,I2,I1).LT.1.0.OR.
     *     CC(I7,I6,I5,I4,I3,I2,I1).NE.(0.0,0.0))GOTO 60
          D(I7,I6,I5,I4,I3,I2,I1)=E(I7,I6,I5,I4,I3,I2,I1)+
     *                            F(I7,I6,I5,I4,I3,I2,I1)
          E(I7,I6,I5,I4,I3,I2,I1)=F(I7,I6,I5,I4,I3,I2,I1)+
     *                            D(I7,I6,I5,I4,I3,I2,I1)
          F(I7,I6,I5,I4,I3,I2,I1)=D(I7,I6,I5,I4,I3,I2,I1)+
     *                            F(I7,I6,I5,I4,I3,I2,I1)
          Q(I7,I6,I5,I4,I3,I2,I1)=R(I7,I6,I5,I4,I3,I2,I1)+
     *                            P(I7,I6,I5,I4,I3,I2,I1)
          R(I7,I6,I5,I4,I3,I2,I1)=P(I7,I6,I5,I4,I3,I2,I1)+
     *                            Q(I7,I6,I5,I4,I3,I2,I1)
          V(I7,I6,I5,I4,I3,I2,I1)=W(I7,I6,I5,I4,I3,I2,I1)+
     *                            X(I7,I6,I5,I4,I3,I2,I1)
          W(I7,I6,I5,I4,I3,I2,I1)=X(I7,I6,I5,I4,I3,I2,I1)+
     *                            V(I7,I6,I5,I4,I3,I2,I1)
          X(I7,I6,I5,I4,I3,I2,I1)=V(I7,I6,I5,I4,I3,I2,I1)+
     *                            W(I7,I6,I5,I4,I3,I2,I1)
   60   CONTINUE
   40 CONTINUE
      DO 50 I7=1,N5
      DO 50 I6=1,N5
      DO 50 I5=1,N5
      DO 50 I4=1,N5
      DO 50 I3=1,N5
      DO 50 I2=1,N2
      DO 50 I1=1,N2
        IF(CI(I7,I6,I5,I4,I3,I2,I1))70,80,90
   70     A(I7,I6,I5,I4,I3,I2,I1)=B(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          TEMPI            =A(I7,I6,I5,I4,I3,I2,I1)+
     *                            C(I7,I6,I5,I4,I3,I2,I1)
          G(I7,I6,I5,I4,I3,I2,I1)=H(I7,I6,I5,I4,I3,I2,I1)
          H(I7,I6,I5,I4,I3,I2,I1)=O(I7,I6,I5,I4,I3,I2,I1)+
     *                            G(I7,I6,I5,I4,I3,I2,I1)
          O(I7,I6,I5,I4,I3,I2,I1)=G(I7,I6,I5,I4,I3,I2,I1)-
     *                            H(I7,I6,I5,I4,I3,I2,I1)
          TEMPR            =Q(I7,I6,I5,I4,I3,I2,I1)+
     *                            R(I7,I6,I5,I4,I3,I2,I1)
   80     S(I7,I6,I5,I4,I3,I2,I1)=           +U(I7,I6,I5,I4,I3,I2,I1)
          TEMPC            =U(I7,I6,I5,I4,I3,I2,I1)+
     *                            S(I7,I6,I5,I4,I3,I2,I1)
   90   CONTINUE
   50 CONTINUE
      END
