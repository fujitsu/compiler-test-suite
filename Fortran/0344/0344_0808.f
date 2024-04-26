      REAL A(20,20,20),B(20,20,20),C(20,20,20)
      DO 1 K=1,20
      DO 1 J=1,20
      DO 1 I=1,20
         A(I,J,K) = 1
         B(I,J,K) = 1
         C(I,J,K) = 1
    1 CONTINUE
      CALL SUB(2,-2,20,A,B,C)
      WRITE(6,*) A
      END
      SUBROUTINE SUB(M,N,IX,A,B,C)
      INTEGER M,N,IX
      REAL A(IX,IX,IX),B(IX,IX,IX),C(IX,IX,IX)
C
      DO 1 K= 1,8
      DO 1 J= 1,8
      DO 1 I= 2,10
         A(K,J,I) = A(K+M,J-N,I-1) * B(K,J,I) + C(K,J,I)
    1 CONTINUE
      RETURN
      END
