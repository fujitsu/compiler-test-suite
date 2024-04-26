PROGRAM MAIN
IMPLICIT NONE
INTEGER :: K,L,X,arr(5),M,N,O
K=10
L=30
X=0
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=fun1():fun2(),arr(K)>=2)
  DO CONCURRENT(L=fun1()+1:fun2()-1,fun(K,L))
    SELECT CASE(K)
    case(2:4)
      SELECT CASE(L)
        case(2)
          DO CONCURRENT(M=1:2)
            X=X+1
          END DO
        case(3)
          DO CONCURRENT(N=1:3,K /= 3)
            X=X+1
          END DO
        case default
          DO CONCURRENT(O=1:4)
            X=X+1
          END DO
      END SELECT
    case(1,5)
       X=X+0
    END SELECT
  END DO
END DO
IF (X == 8 .AND. K==10 .AND. L==30) THEN
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

INTEGER PURE FUNCTION fun1()
fun1=1
END FUNCTION
INTEGER PURE FUNCTION fun2()
fun2=5
END FUNCTION

END PROGRAM
