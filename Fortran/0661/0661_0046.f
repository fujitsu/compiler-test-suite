      CALL SUBA
      WRITE(6,*) '*****PASS*****'
      STOP
      END
      SUBROUTINE SUBA
      DIMENSION A(12),B(8),C(6)
      X=12.0
      Y=0.0
      DO 10 I=1,12
        X=X-1.0
        A(I)=X
        Y=Y+1.0
        IF(I.LE.8) B(I)=Y
   10 CONTINUE
      CALL SUBC(A,B,C,3,4,2)
      END
      SUBROUTINE SUBC(A,B,C,L,M,N)
      REAL*4    A(L,M),B(M,N),C(L,N)
      DO 10 I=1,L
        DO 20 K=1,N
           C(I,K)=0.0
           DO 30 J=1,M
             C(I,K)=C(I,K)+A(I,J)*B(J,K)
   30      CONTINUE
   20   CONTINUE
   10 CONTINUE
      RETURN
      END
