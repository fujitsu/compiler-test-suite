      REAL*4 A(20,20,20),B(20,20,20),C(20,20,20)
C
      CALL INT(A,B,C)
      CALL REC(2,-2,A,B,C)
      END
C
      SUBROUTINE INT(A,B,C)
      REAL*4 A(20,20,20),B(20,20,20),C(20,20,20)
C
      DO 1 K=1,20
      DO 1 J=1,20
      DO 1 I=1,20
        A(I,J,K)=1
        B(I,J,K)=1
    1   C(I,J,K)=1
      RETURN
      END
C
      SUBROUTINE REC(M,N,A,B,C)
      INTEGER*4 M,N
      REAL*4 A(20,20,20),B(20,20,20),C(20,20,20)
C
      DO 1 K=1,10
      DO 1 J=1,10
      DO 1 I=2,11
    1   A(I,J,K) = A(I-1,J,K) * B(I,J,K) + C(I,J,K)
C
      DO 2 K=1,10
      DO 2 J=1,10
      DO 2 I=2,11
    2   A(I,J,K) = A(I-1,J+M,K-N) * B(I,J,K) + C(I,J,K)
C
      DO 3 K=1,10
      DO 3 J=1,10
      DO 3 I=2,11
    3   A(J,I,K) = A(J,I-1,K) * B(I,J,K) + C(I,J,K)
C
      DO 4 K=1,10
      DO 4 J=1,10
      DO 4 I=2,11
    4   A(J,I,K) = A(J+M,I-1,K-N) * B(I,J,K) + C(I,J,K)
      WRITE(6,5) (((A(I,J,K),I=1,20,5),J=1,20,5),K=1,20,5)
      WRITE(6,5) (((B(I,J,K),I=1,20,5),J=1,20,5),K=1,20,5)
      WRITE(6,5) (((C(I,J,K),I=1,20,5),J=1,20,5),K=1,20,5)
    5 FORMAT(5E15.6)
      RETURN
      END
