PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L
X=0
K=10
L=30
DO CONCURRENT(K=1:5:2,K>2)
    DO CONCURRENT (L=2:4,L>1)
     IF(L==2) THEN
      GOTO 200
     ELSE IF(L==3) THEN
      X = X + 1
     ELSE
      X = X + 1
    END IF
    200 X = X + 2
    END DO
END DO

IF (X == 16 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS "
else
 Print *,"FAIL ",X
END IF
END PROGRAM
