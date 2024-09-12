      REAL*8 A(100,10),B(100,10),C(100,10),X(100),Z(100,10)
      LOGICAL LT(100,10),LF(100,10)

      DO 10 J=1,10
      DO 10 I=1,100
       A(I,J)=0.001000D0*I
       B(I,J)=0.000010D0*I
       IF(A(I,J).GT.B(I,J)) LT(I,J)=.TRUE.
       LF(I,J)=.NOT.LT(I,J)
       C(I,J)=I*0.00005D0
       X(I)=-I*0.000010D0
 10   CONTINUE

      CALL SUB(A,B,C,X,Z,LT,LF,100,10)
      STOP
      END
      SUBROUTINE SUB(A,B,C,X,Z,LT,LF,N100,N10)
      REAL*8 A(N100,N10),B(N100,N10),C(N100,N10)
      REAL*8 X(N100),Z(N100,N10)
      REAL*8 S1,S2,W1,W2
      LOGICAL LT(N100,N10),LF(N100,N10)
      LOGICAL L1/.TRUE./,L2/.TRUE./

      DO 21 L=1,N10
       DO 11 K=1,N10
       DO 11 J=1,N10
       DO 11 I=1,N100
         S1=X(K)-I-L+K
         A(I,J)=A(I,J)-C(I,L)-X(K)-S1/100.0D00
         W1=B(I,J)+B(I,J)
         B(I,J)=W1-C(I,L)+X(K)-S1/111.0D0
         IF(I.GT.50) THEN
           A(I,J)=-A(I,J)
           B(I,J)=-B(I,J)
         ENDIF
         IF(A(I,J).LE.0.00000D0) LT(I,J)=.FALSE.
         IF(A(I,J).LT.B(I,J)) LF(I,J)=.TRUE.
 11    CONTINUE

       DO 21 I=1,N100
         S2=X(I)-L*0.200000D0
         W2=-B(I,L)-X(L)
         Z(I,L)=A(I,L)-W2+C(I,L)-S2/100.D00
         L1=I.GT.50
         L2=Z(I,L).LE.0.0000D0
         IF(LT(I,L).OR.LF(I,L)) Z(I,L)=S2-1.000000D0
         IF(L1.AND.L2) THEN
           Z(I,L)=-Z(I,L)
         ENDIF
 21    CONTINUE

       PRINT *,Z,LT,LF
       RETURN
       END
