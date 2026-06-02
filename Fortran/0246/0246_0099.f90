MODULE Mod1

 INTEGER :: counter=0

 TYPE ty
  INTEGER :: val
 END TYPE

 INTERFACE
  PURE  SUBROUTINE sub1(d1)
   INTEGER, INTENT(IN) :: d1
  END SUBROUTINE
  PURE  SUBROUTINE sub2(d1)
   INTEGER, INTENT(IN) :: d1
  END SUBROUTINE
  PURE  SUBROUTINE sub3(d1)
   INTEGER, INTENT(IN) :: d1
  END SUBROUTINE
 END INTERFACE

contains
 SUBROUTINE destructor(dmy)
  TYPE (ty),INTENT(IN) :: dmy
  IF(dmy%val .GT. 0) THEN
    counter = counter + 1
  END IF
 END SUBROUTINE

END MODULE

PROGRAM MAIN
USE Mod1
IMPLICIT NONE
INTEGER :: K,L
INTEGER, ALLOCATABLE :: arr(:)

K=10
L=30
ALLOCATE(arr(5))
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,arr(K)>=2)
  if(arr(K)==4) then
    DEALLOCATE(arr)
    call sub1(K)
    ALLOCATE(arr(5))
    arr=(/ 1,2,3,4,5 /)
  end if
  DO CONCURRENT(L=2:4,arr(K)<5)
    call sub2(K)
  END DO
  if(arr(K)==4) then
    call sub3(K)
  end if
END DO
IF ( K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL"
END IF
END PROGRAM

PURE SUBROUTINE sub1(d1)
  Use Mod1
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE
PURE SUBROUTINE sub2(d1)
  Use Mod1
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE
PURE SUBROUTINE sub3(d1)
  Use Mod1
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i
  i=d1
  obj1%val=i
  i=obj1%val
END SUBROUTINE
