PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,start1,END1,start2,END2,L,X
start1=1
END1=5
start2=2
END2=4
K=10
L=30
X=0
DO CONCURRENT(K=start1:END1)
  DO CONCURRENT(L=start2:END2)
    SELECT CASE(L)
    case(2)
      X=X+2
    case(3)
      X=X+3
    case(4)
      X=X+4
    END SELECT
  END DO
END DO
IF (X == 45 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
END PROGRAM
