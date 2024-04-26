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

PURE FUNCTION sub1(d1)
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i,sub1
  i=d1
  obj1%val=i
  i=obj1%val
  sub1=i
END FUNCTION
PURE FUNCTION sub2(d1)
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i,sub2
  i=d1
  obj1%val=i
  i=obj1%val
  sub2=i
END FUNCTION
PURE FUNCTION sub3(d1)
  IMPLICIT NONE
  TYPE (ty) :: obj1
  INTEGER , INTENT(IN) :: d1
  INTEGER :: i,sub3
  i=d1
  obj1%val=i
  i=obj1%val
  sub3=i
END FUNCTION

END MODULE

PROGRAM MAIN
USE Mod1
IMPLICIT NONE
INTEGER :: K,L,M,K2,K3
INTEGER :: arr(5)
INTEGER :: counter2

K=10
L=30
counter2=0
arr=(/ 1,2,3,4,5 /)
DO CONCURRENT(K=1:5,K2=3:5,K3=1:3,arr(K)>=2)
  if(arr(K)==4) then
    Do CONCURRENT(L=2:K2:K3,K2-2 /= K3)
      if(arr(L)==3) then
        DO CONCURRENT(M=2:arr(L):K,arr(L)>=3)
          counter2=sub2(M)
        END DO
      else
          counter2=sub3(L)
      end if
    END DO
  else
    counter2=sub1(K)
  end if
END DO
IF (counter2 == 5 .AND. K==10 .AND. L==30) THEN
 Print *,"PASS"
ELSE
 Print *,"FAIL",counter2
END IF
END PROGRAM
