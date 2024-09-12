      PARAMETER (N=100)
      REAL A(N)/N*0./,B(N)/N*0./,C(N)/N*0./
      LOGICAL L(N)
      INTEGER M(N)
      DATA L/50*.TRUE.,50*.FALSE./
      DUMMY=0.0
      DO 1000 II=1,3
        DO 10 I=1,N
          M(I)=I
          IF(L(I)) A(M(I))=1.0
   10   CONTINUE
        J=1
        DO 20 I=1,N
        IF(L(I)) THEN
          B(J)=A(I)
          J=J+1
          ENDIF
   20   CONTINUE
        K=1
        DO 30 I=1,N
        IF(L(I)) THEN
          C(I)=B(K)
        ENDIF
   30   CONTINUE
        DUMMY=DUMMY+1.0
 1000 CONTINUE
      PRINT *,A,B,C
      STOP
      END
