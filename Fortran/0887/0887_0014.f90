PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L,N
X=0
K=10
L=30
DO CONCURRENT(K=1:5,L=1:4,(K<3 .OR. K==5))

      IF(X == 25) THEN
    DO CONCURRENT(N=1:4,L /= K)
      IF(X == 25) THEN
        print *,"K=",K
        print *,"N=",N
      END IF
      24 IF(X == 24) THEN
        X=X+1
      END IF
    END DO
      END IF
END DO
 IF(X == 24) THEN
 IF(X == 24) THEN
 IF(X == 24) THEN
 IF(X == 24) THEN
  GOTO 24
END IF
END IF
END IF
END IF

IF (X == 24  .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",X
END IF
END PROGRAM


