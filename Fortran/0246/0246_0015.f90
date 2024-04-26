PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,start1,END1,X,start2,END2,L
start1=1
END1=5
start2=2
END2=4
X=0
K=10
L=30
DO CONCURRENT(K=start1:END1)
  DO CONCURRENT(L=start2:END2)
    IF(L==2) THEN
      X = X + 2
    ELSE IF(L==3) THEN
      X = X + 3
    ELSE 
      X = X + 4
    END IF
  END DO
END DO
IF (X == 45 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
END PROGRAM
