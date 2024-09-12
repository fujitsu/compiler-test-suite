      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10)
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10)
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10)
      DO 10 I1=1,10
      DO 10 I2=1,3
      DO 10 I3=1,3
      DO 10 I4=1,3
      DO 10 I5=1,3
      DO 10 I6=1,3
      DO 10 I7=1,2
        A(I7,I6,I5,I4,I3,I2,I1)=MOD(I2+I3,2)-MOD(I5+I6,2)
        B(I7,I6,I5,I4,I3,I2,I1)=MOD(I1+I7,2)-MOD(I3+I4,2)
        C(I7,I6,I5,I4,I3,I2,I1)=MOD(I2+I5,2)-MOD(I4+I3,2)
        D(I7,I6,I5,I4,I3,I2,I1)=MOD(I6+I4,2)-MOD(I5+I6,2)
        E(I7,I6,I5,I4,I3,I2,I1)=MOD(I2+I3,2)-MOD(I5+I6,2)
        F(I7,I6,I5,I4,I3,I2,I1)=FLOAT(MOD(I2+I3,2)-MOD(I5+I6,2))
        G(I7,I6,I5,I4,I3,I2,I1)=FLOAT(MOD(I4+I3,2)-MOD(I5+I6,2))
        H(I7,I6,I5,I4,I3,I2,I1)=FLOAT(MOD(I2+I3,2)-MOD(I7+I6,2))
        O(I7,I6,I5,I4,I3,I2,I1)=FLOAT(MOD(I1+I3,2)-MOD(I7+I6,2))
        P(I7,I6,I5,I4,I3,I2,I1)=FLOAT(MOD(I2+I4,2)-MOD(I5+I6,2))
        Q(I7,I6,I5,I4,I3,I2,I1)=(1.0,0.0)
        R(I7,I6,I5,I4,I3,I2,I1)=(0.0,1.0)
        S(I7,I6,I5,I4,I3,I2,I1)=(1.0,1.0)
   10 CONTINUE
      N3=3
      N10=10
      CALL SUB1(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      CALL SUB2(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      CALL SUB3(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      CALL SUB4(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      CALL SUB5(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      CALL SUB6(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      CALL SUB7(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      CALL SUB8(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      IF (SUM(A).NE.12080) PRINT *,'NG1'
      IF (SUM(B).NE.  270) PRINT *,'NG2'
      IF (SUM(C).NE.    0) PRINT *,'NG3'
      IF (SUM(D).NE.  532) PRINT *,'NG4'
      IF (SUM(E).NE.    0) PRINT *,'NG5'

      IF (SUM(G).NE.0.00000000)  PRINT *,'NG7'
      IF (SUM(H).NE.-270.000000) PRINT *,'NG8'

      IF (SUM(P).NE.0.00000000)  PRINT *,'NG10'
      IF (ABS(SUM(Q)-(4756.267047136595D0,3146.008690559502D0))>1.0E-6)
     1 PRINT *,'NG11'
      IF (SUM(R).NE.(0.000000000000000,4860.000000000000))
     1 PRINT *,'NG12'
      IF (SUM(S).NE.(3414.000000000000,3420.000000000000))
     1 PRINT *,'NG13'
      PRINT *,'*** OK ***'
      END
      SUBROUTINE SUB1(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10)
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10)
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10)
      DO 10 I1=1,10
      DO 10 I2=2,3
      DO 10 I3=1,3
      DO 10 I4=1,2
      DO 10 I5=2,3
      DO 10 I6=1,3
      DO 10 I7=1,2
        A(I7,I6,I5,I4,I3,I2,I1)=B(I7 ,I6  ,I5  ,I4  ,I3 ,I2,I1)
     *                         +D(I7  ,I6,I5,  I4,  I3,I2,I1)
     *                         +F(I7  ,I6,I5-1,I4,  I3,I2,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
     *                         +A(I7  ,I6,I5,  I4  ,I3,I2  ,I1)
     *                         +O(I7  ,I6,I5-1,I4  ,I3,I2  ,I1)
        F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2  ,I1)
     *                         +Q(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        S(I7,I6,I5,I4,I3,I2,I1)=C(I7  ,I6,I5,  I4  ,I3,I2  ,I1)
        F(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
   10 CONTINUE
      DO 20 I1=3,10
      DO 20 I2=2,3
      DO 20 I3=1,3
      DO 20 I4=1,2
      DO 20 I5=2,3
      DO 20 I6=1,3
      DO 20 I7=1,2
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(B(I7  ,I6,I5  ,I4  ,I3,I2  ,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
     *                         ,A(I7  ,I6,I5,  I4,  I3,I2  ,I1))
     *                         +D(I7  ,I6,I5,  I4,  I3,I2  ,I1-1)
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5  ,I4  ,I3,I2  ,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2  ,I1))
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5  ,I4  ,I3,I2  ,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2  ,I1)))
     *                    +SQRT(ABS(O(I7  ,I6,I5,  I4,  I3,I2  ,I1-2)))
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5  ,I4  ,I3,I2  ,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2  ,I1)))
     *                  +LOG(EXP(Q(I7  ,I6,I5,  I4,  I3,I2  ,I1-1)))
   20 CONTINUE
      END
      SUBROUTINE SUB2(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10),TEMPI
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10),TEMPR
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10),TEMPC
      DO 10 I1=3,10
      DO 10 I2=2,3
      DO 10 I3=1,3
      DO 10 I4=1,2
      DO 10 I5=2,3
      DO 10 I6=1,3
      DO 10 I7=1,2
        TEMPI                  =B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=TEMPI
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPI
        F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2  ,I1-2)
        TEMPR                  =F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +O(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=TEMPR
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +O(I7  ,I6,I5,  I4,  I3,I2,I1-1)
        TEMPC                  =R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPC
        S(I7,I6,I5,I4,I3,I2,I1)=TEMPI
        F(I7,I6,I5,I4,I3,I2,I1)=TEMPI
   10 CONTINUE
      DO 20 I1=1,10
      DO 20 I2=2,3
      DO 20 I3=1,3
      DO 20 I4=1,2
      DO 20 I5=2,3
      DO 20 I6=1,3
      DO 20 I7=1,2
        TEMPI                  =ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(TEMPI                          )
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,TEMPI                          )
        TEMPR                  =SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
     *                         +COS(F(I7  ,I6,I5,  I4,  I3,I2  ,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(TEMPR                          )
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
     *                    +SQRT(ABS(O(I7  ,I6,I5,  I4,  I3,I2  ,I1)))
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(TEMPR)                          )
        TEMPC                  =EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(TEMPC                          ))
   20 CONTINUE
      END
      SUBROUTINE SUB3(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10)
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10)
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10)
      DO 10 I1=1,N10
      DO 10 I2=2,N3
      DO 10 I3=2,N3
      DO 10 I4=2,N3-1
      DO 10 I5=2,N3
      DO 10 I6=2,N3
      DO 10 I7=2,N10-8
        A(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +D(I7  ,I6-1,I5,  I4,  I3,I2,I1)
        F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3-1,I2,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +Q(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        S(I7,I6,I5,I4,I3,I2,I1)=C(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
        F(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5  ,I4+1,I3,I2-1,I1)
   10 CONTINUE
      DO 20 I1=2,N10
      DO 20 I2=2,N3
      DO 20 I3=2,N3
      DO 20 I4=2,N3-1
      DO 20 I5=2,N3
      DO 20 I6=2,N3
      DO 20 I7=1,N10-8
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1-1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,A(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
     *                         +COS(F(I7  ,I6,I5,  I4,  I3-1,I2,I1))
     *                         +COS(F(I7  ,I6,I5,  I4-1,I3  ,I2,I1))
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(Q(I7  ,I6,I5-1,I4  ,I3,I2  ,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
     *                  +LOG(EXP(Q(I7  ,I6-1,I5,  I4,  I3,I2-1,I1)))
   20 CONTINUE
      END
      SUBROUTINE SUB4(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10),TEMPI
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10),TEMPR
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10),TEMPC
      DO 10 I1=1,N10
      DO 10 I2=2,N3
      DO 10 I3=1,N3
      DO 10 I4=1,N3-1
      DO 10 I5=2,N3
      DO 10 I6=1,N3
      DO 10 I7=1,N10-8
        TEMPI                  =B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=TEMPI
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPI
        F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        TEMPR                  =F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +O(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=TEMPR
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        TEMPC                  =R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPC
        S(I7,I6,I5,I4,I3,I2,I1)=TEMPI
        F(I7,I6,I5,I4,I3,I2,I1)=TEMPI
   10 CONTINUE
      DO 20 I1=1,N10
      DO 20 I2=2,N3
      DO 20 I3=2,N3
      DO 20 I4=1,N3-1
      DO 20 I5=2,N3
      DO 20 I6=1,N3
      DO 20 I7=2,N10-8
        TEMPI                  =ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(TEMPI                          )
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,TEMPI                          )
        TEMPR                  =SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
     *                         +    F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(TEMPR                          )
     *                         +    F(I7  ,I6,I5,  I4,  I3-1,I2,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(TEMPR)                          )
        TEMPC                  =EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(TEMPC                          ))
     *                         +    Q(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +    Q(I7  ,I6,I5,  I4,  I3,I2-1,I1)
   20 CONTINUE
      END
      SUBROUTINE SUB5(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10)
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10)
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10)
      DO 10 I1=1,10
      DO 10 I2=3,3
      DO 10 I3=2,3
      DO 10 I4=1,2
      DO 10 I5=2,3
      DO 10 I6=3,3
      DO 10 I7=1,2
        IF(I2.GT.I1)THEN
        IF(I3.GT.I4)THEN
        A(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +D(I7  ,I6,I5,  I4,  I3-1,I2,I1)
        ENDIF
        ELSE
        IF(I7.GT.I6)THEN
        F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +F(I7  ,I6-2,I5,  I4,  I3,I2-1,I1)
        ENDIF
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        ENDIF
        IF(I7.GT.I6)THEN
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +Q(I7  ,I6,I5,  I4,  I3-2,I2,I1)
        ELSE
        S(I7,I6,I5,I4,I3,I2,I1)=C(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
        F(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5  ,I4+1,I3,I2-1,I1)
        ENDIF
   10 CONTINUE
      DO 20 I1=3,10
      DO 20 I2=2,3
      DO 20 I3=1,3
      DO 20 I4=1,2
      DO 20 I5=2,3
      DO 20 I6=1,3
      DO 20 I7=1,2
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        IF(I5.GT.I3)THEN
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,A(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        IF(I7.GT.I1)THEN
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
     *                         +COS(F(I7  ,I6,I5,  I4,  I3,I2  ,I1))
        IF(I2.GT.I5)THEN
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
     *                    +SQRT(ABS(O(I7  ,I6,I5,  I4,  I3,I2,I1-2)))
        ENDIF
        ENDIF
        ENDIF
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
   20 CONTINUE
      END
      SUBROUTINE SUB6(A,B,C,D,E,F,G,H,O,P,Q,R,S)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10),TEMPI
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10),TEMPR
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10),TEMPC
      DO 10 I1=1,10
      DO 10 I2=2,3
      DO 10 I3=1,3
      DO 10 I4=1,2
      DO 10 I5=2,3
      DO 10 I6=2,3
      DO 10 I7=2,2
        IF(I1.GT.I2.OR.I3.LT.I4)THEN
        TEMPI                  =B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=TEMPI
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPI
        ENDIF
   10 CONTINUE
      DO 20 I1=2,10
      DO 20 I2=2,3
      DO 20 I3=2,3
      DO 20 I4=1,2
      DO 20 I5=2,3
      DO 20 I6=1,3
      DO 20 I7=1,2
        TEMPI                  =ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(TEMPI                          )
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,TEMPI                          )
        IF(I4.GT.I5.OR.I6.LT.I7)THEN
        IF(I1.GT.I2.OR.I3.LT.I4)THEN
        TEMPR                  =SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
     *                         +COS(F(I7  ,I6,I5,  I4,  I3,I2  ,I1))
     *                         +COS(F(I7  ,I6,I5,I4,  I3,I2  ,I1))
     *                         +COS(F(I7  ,I6,I5-1,I4,  I3,I2  ,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(TEMPR                          )
        ENDIF
        ENDIF
        IF(I1.GT.I2.OR.I3.LT.I4.OR.I7.LT.I4)THEN
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(2.0)                          )
        TEMPC                  =EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(TEMPC                          ))
        ENDIF
   20 CONTINUE
      END
      SUBROUTINE SUB7(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10)
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10)
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10)
      DO 10 I1=1,N10
      DO 10 I2=2,N3
      DO 10 I3=2,N3
      DO 10 I4=2,N3-1
      DO 10 I5=2,N3
      DO 10 I6=1,N3
      DO 10 I7=1,N10-8
        IF(I1.GT.I2.OR.I3.LT.I4) GOTO 11
        A(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
   11   D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        IF(I1.GT.I2.OR.I3.LT.I4) GOTO 12
   12   F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        IF(I7.LT.I2.AND.I1.LT.I2) GOTO 13
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +O(I7  ,I6,I5-1,I4,  I3,I2  ,I1)
     *                         +O(I7  ,I6,I5,  I4-1,I3,I2  ,I1)
     *                         +O(I7  ,I6,I5,  I4,  I3-1,I2,I1)
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        S(I7,I6,I5,I4,I3,I2,I1)=C(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
   13   F(I7,I6,I5,I4,I3,I2,I1)=B(I7  ,I6,I5  ,I4+1,I3,I2-1,I1)
   10 CONTINUE
      DO 20 I1=3,N10
      DO 20 I2=2,N3
      DO 20 I3=1,N3
      DO 20 I4=1,N3-1
      DO 20 I5=2,N3
      DO 20 I6=1,N3
      DO 20 I7=3,N10-8
        IF(I7.LT.I2.AND.I1.LT.I2) GOTO 21
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,A(I7  ,I6,I5,  I4,  I3,I2-1,I1))
   21   F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        IF(I7.LT.I2.AND.I1.LT.I2) GOTO 22
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
   22   Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
     *                  +LOG(EXP(Q(I7  ,I6,I5,  I4,  I3,I2,I1-2)))
   20 CONTINUE
      END
      SUBROUTINE SUB8(A,B,C,D,E,F,G,H,O,P,Q,R,S,N3,N10)
      INTEGER    A(2,3,3,3,3,3,10),B(2,3,3,3,3,3,10)
      INTEGER    C(2,3,3,3,3,3,10),D(2,3,3,3,3,3,10)
      INTEGER    E(2,3,3,3,3,3,10),TEMPI
      REAL       F(2,3,3,3,3,3,10),G(2,3,3,3,3,3,10)
      REAL       H(2,3,3,3,3,3,10),O(2,3,3,3,3,3,10)
      REAL       P(2,3,3,3,3,3,10),TEMPR
      COMPLEX*16 Q(2,3,3,3,3,3,10),R(2,3,3,3,3,3,10)
      COMPLEX*16 S(2,3,3,3,3,3,10),TEMPC
      DO 10 I1=1,N10
      DO 10 I2=2,N3
      DO 10 I3=1,N3
      DO 10 I4=1,N3-1
      DO 10 I5=2,N3
      DO 10 I6=1,N3
      DO 10 I7=2,N10-8
        IF(C(I7,I6,I5,I4,I3,I2,I1))11,12,13
   13   TEMPI                  =B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=TEMPI
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPI
   12   F(I7,I6,I5,I4,I3,I2,I1)=G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        TEMPR                  =F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +H(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +O(I7  ,I6,I5,  I4,  I3,I2  ,I1)
        O(I7,I6,I5,I4,I3,I2,I1)=TEMPR
     *                         +F(I7  ,I6,I5,  I4,  I3,I2-1,I1)
   11   TEMPC                  =R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +S(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        Q(I7,I6,I5,I4,I3,I2,I1)=R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         +TEMPC
   10 CONTINUE
      DO 20 I1=2,N10
      DO 20 I2=2,N3
      DO 20 I3=2,N3
      DO 20 I4=2,N3-1
      DO 20 I5=2,N3
      DO 20 I6=2,N3
      DO 20 I7=1,N10-8
        TEMPI                  =ABS(B(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        A(I7,I6,I5,I4,I3,I2,I1)=ABS(TEMPI                          )
     *                         +C(I7  ,I6,I5,  I4,  I3,I2-1,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2  ,I1)
     *                         +A(I7  ,I6-1,I5,I4,  I3,I2  ,I1)
     *                         +A(I7  ,I6,I5-1,I4,  I3,I2  ,I1)
     *                         +A(I7  ,I6,I5,  I4-1,I3,I2  ,I1)
     *                         +A(I7  ,I6,I5,  I4,I3-1,I2  ,I1)
     *                         +A(I7  ,I6,I5,  I4,  I3,I2-1,I1)
        D(I7,I6,I5,I4,I3,I2,I1)=MAX(E(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                         ,TEMPI                          )
        IF(C(I7,I6,I5,I4,I3,I2,I1))21,22,22
   21   TEMPR                  =SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(G(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(H(I7  ,I6,I5,  I4,  I3,I2-1,I1))
        F(I7,I6,I5,I4,I3,I2,I1)=SIN(F(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                         +COS(TEMPR                          )
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(F(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
     *                    +SQRT(ABS(O(I7  ,I6,I5,  I4,  I3,I2  ,I1)))
        O(I7,I6,I5,I4,I3,I2,I1)=P(I7  ,I6,I5-1,I4+1,I3,I2-1,I1)
     *                    +SQRT(ABS(TEMPR)                          )
   22   TEMPC                  =EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(S(I7  ,I6,I5,  I4,  I3,I2-1,I1)))
        Q(I7,I6,I5,I4,I3,I2,I1)=EXP(R(I7  ,I6,I5-1,I4+1,I3,I2-1,I1))
     *                  +LOG(EXP(TEMPC                          ))
   20 CONTINUE
      END
