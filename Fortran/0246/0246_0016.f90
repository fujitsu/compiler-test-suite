PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,X,L
X=0
K=10
L=30
DO CONCURRENT(K=1:5:2,K>2)
    DO CONCURRENT (L=2:4,L>1)
     IF(L==2) THEN
      X = X + 2
     else IF(L==3) THEN
      X = X + 3
     else 
      X = X + 4
    END IF

    END DO
END DO
IF (X == 18 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS "
else
 Print *,"FAIL "
END IF
END PROGRAM
