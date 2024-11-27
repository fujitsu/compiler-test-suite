PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L,N
X=0
K=10
L=30

  GOTO 24
DO CONCURRENT(K=1:5,L=1:4,(K<3 .OR. K==5))
  GOTO 24
    DO CONCURRENT(N=1:4,L /= K)
      IF(X == 25) THEN
        print *,"K=",K
        print *,"N=",N
      END IF
      IF(L /= N) THEN
        GOTO (1,2) N
      END IF
      1 X = X + 1
      2 X = X + 2
      24 IF(X == 24) THEN
        X=X+1
      END IF

    END DO
       X = X + 3
  GOTO 24
END DO
  GOTO 24
END PROGRAM
