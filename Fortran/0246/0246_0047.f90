PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L,N
X=0
K=10
L=30
DO CONCURRENT(K=1:5,L=1:4,(K<3 .OR. K==5))
    DO CONCURRENT(N=1:4,L /= K)
      IF(X == 25) THEN
      END IF
      IF(L /= N) THEN
        GOTO (1,2) N
      END IF
      1 X = X + 1
      2 X = X + 2
    END DO
      3 X = X + 3
END DO
IF (X == 148 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",X
END IF
END PROGRAM
