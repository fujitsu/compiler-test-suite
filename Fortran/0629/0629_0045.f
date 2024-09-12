      IMPLICIT REAL*8 (A-H,O-Z)
      PARAMETER (KK=1001)
      PARAMETER (KA=KK,KB=KK,KC=KK)
      DIMENSION A(KA,KA),B(KB,KB),C(KC,KC)
      DO 1 I=1,KK
        DO 1 J=1,KK
          A(J,I) = 2
          B(J,I) = 3
          C(J,I) = 4
        CONTINUE
  1   CONTINUE 
      L=KA-1
      M=L
      N=L
      CALL MULMMW(A,B,C,KA,KB,KC,L,M,N)
      STOP
      END
      SUBROUTINE MULMMW(A,B,C,KA,KB,KC,L,M,N)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION A(KA,M),B(KB,N),C(KC,N)
      MM=M/2*2
      DO 60 J=1,N
      DO 10 I=1,L
 10    C(I,J)=0.D0
       DO 30 I=1,L
       DO 20 K=1,MM,2
 20    C(I,J)=C(I,J)+A(I,K)*B(K,J)+A(I,K+1)*B(K+1,J)
 30    CONTINUE
      DO 50 K=MM+1,M
      DO 40 I=1,L
 40    C(I,J)=C(I,J)+A(I,K)*B(K,J)
 50    CONTINUE
 60    CONTINUE
      PRINT *,C(1,2),C(103,104),C(505,506)
      RETURN
      END
