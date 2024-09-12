      PARAMETER (N=10,M=10)
      REAL*8 A(N,M),B(N,M),C(N,M),D(N,M),AA(N)
      INTEGER NI(3),MI(3)
      LOGICAL M1,M2,M3,LL(N)
      DATA M1/.TRUE./,M2/.TRUE./,M3/.TRUE./
      DATA NI/2,5,10/,MI/2,5,10/,LL/5*.TRUE.,5*.FALSE./

      IF(M1)THEN
      DO 10 I=1,M
       DO 10 J=1,N
        A(I,J)=9.9
   10 CONTINUE
      ENDIF

      IF(A(1,1).EQ.0.0)GO TO 99
      A(1,1)=1.0
      A(1,2)=2.0
   99 DO 20 I=1,M
       DO 20 J=1,N
        B(I,J)=2.9
   20 CONTINUE
      XX=9.999
      DO 30 I=1,M
       DO 30 J=1,N
        B(I,J)=B(I,J)+A(I,J)
   30 CONTINUE

      CALL SUB1(A,B,N,M)

      DO 40 I=1,M
       DO 40 J=1,N
        C(I,J)=4.2
   40 CONTINUE

      CALL SUB2(A,B,N,M)

      DO 1000 II=1,3
      NN=NI(II)
      MM=MI(II)
      DO 50 I=1,MM
       DO 50 J=1,NN
        A(I,J)=B(I,J)*C(I,J)
   50 CONTINUE
      PRINT *,A,B,C
      DO 60 I=1,MM
       DO 60 J=1,NN
        C(I,J)=A(I,J)-B(I,J)
   60 CONTINUE
      PRINT *,C
 1000 CONTINUE

      IF(M1)THEN
      DO 70 I=1,M
       DO 70 J=1,N
        X=I*J
        D(I,J)=SQRT(X)
   70 CONTINUE
      ELSEIF(M2)THEN
      DO 80 K=1,M
       AA(K)=1.0
   80 CONTINUE
      ELSEIF(M3)THEN
      DO 90 I=1,M
       DO 90 J=1,N
        D(I,J)=0.0
   90 CONTINUE
      ENDIF
      DO 2000 K=1,N
      IF(LL(K))THEN
      DO 100 I=1,M
       DO 100 J=1,N
        A(I,J)=B(I,J)-C(I,J)
  100 CONTINUE
      ELSE
        DO 110 I=1,M
         DO 110 J=1,N
          C(I,J)=0.0
  110 CONTINUE
      ENDIF
 2000 CONTINUE
      PRINT *,C,D
      STOP
      END
      SUBROUTINE SUB1(A,B,N,M)
      REAL*8 A(N,M),B(N,M)
      DO 10 I=1,M
       DO 10 J=1,N
        A(I,J)=5.0
        B(I,J)=3.0
   10 CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(A,B,N,M)
      REAL*8 A(N,M),B(N,M)
      DO 10 I=1,M
       DO 10 J=1,N
        A(I,J)=B(I,J)*4.3
   10 CONTINUE
      RETURN
      END
