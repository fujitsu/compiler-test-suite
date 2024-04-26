PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,L,X,arr(5)
K=10
L=30
X=0
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,arr(K)>=2)
  DO CONCURRENT(L=2:4,fun(K,L))
    SELECT CASE(K)
    case(2:4)
      SELECT CASE(L)
        case(2)
        X=X+2
        case(3)
        X=X+3
        case default
        X=X+4
      END SELECT
    case(1,5)
       X=X+0
    END SELECT
  END DO
END DO
IF (X == 11 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
contains
LOGICAL PURE FUNCTION fun(d1,d2)
INTEGER,INTENT(IN) :: d1,d2
if(Mod(d1,d2) == 0) then
fun=.TRUE.
else
fun=.FALSE.
end if
END FUNCTION
END PROGRAM
