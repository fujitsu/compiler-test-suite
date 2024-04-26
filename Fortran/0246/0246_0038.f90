MODULE Mod1

 INTEGER :: counter=0

 TYPE ty
  INTEGER :: val
 END TYPE

contains
 SUBROUTINE destructor(dmy)
  TYPE (ty),INTENT(IN) :: dmy
  IF(dmy%val .GE. 0) THEN
    counter = counter + 1
  END IF
 END SUBROUTINE

PURE SUBROUTINE sub1(d1)
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE
PURE SUBROUTINE sub2(d1)
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE
PURE SUBROUTINE sub3(d1)
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE

END MODULE

PROGRAM MAIN
USE Mod1
IMPLICIT NONE
INTEGER :: K,L,M
INTEGER :: arr(5)

K=10
L=30
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,arr(K)>=2)
  if(arr(K)==4) then
    Do CONCURRENT(L=2:arr(K),K>=3)
      if(arr(L)==3) then
        DO CONCURRENT(M=2:arr(L),arr(L)>=3)
          call sub2(M)
        END DO
      else
          call sub3(L)
      end if
    END DO
  else
    call sub1(K)
  end if
END DO
IF ( K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
END PROGRAM
