       REAL A(100),B(100),C(100)
       REAL D(100)
       N=100
       DO 1 I=1,100
        A(I)=I
        B(I)=A(I)+I
        C(I)=B(I)+I
        D(I)=C(I)-B(I)-I
 1     CONTINUE
       CALL SUB(A,B,C,D,N)
       PRINT *,C,D
       END
       SUBROUTINE SUB(A,B,C,D,N)
       REAL A(N),B(N),C(N),D(N)

       S0 = 0
       S1 = 0
       S2 = 0
       DO 11 I=2,N-1
        A(I)=A(I-1)+B(I)
        S0=S0+B(I)
 11    CONTINUE
       DO 4 I=2,N-2
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)-C(I)
        C(I)=C(I-1)+D(I)
        D(I)=D(I-1)-I
        S1=S1+D(I)
 4     CONTINUE
       IF(N.GT.60) THEN
         DO 3 I=2,N-10
          A(I)=A(I-1)+B(I)
          B(I)=B(I-1)+C(I)
          D(I)=A(I-1)+B(I)
          S2=S2+C(I)
 3     CONTINUE
       ELSE
         DO 12 I=2,N-3
          A(I)=A(I-1)+B(I)
          S0=S0+B(I)
 12    CONTINUE
       ENDIF
       PRINT *,S1,S2
       RETURN
       END
