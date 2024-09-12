MODULE MOD1
IMPLICIT NONE
  type ty(k1,k2,k3)
     integer,kind :: k1,k2,k3
     integer(kind=k1) :: arr1(k1)
     integer (kind=k2):: arr2(k2)
     integer::jj = (2+k1)+k2+(7+k3+3)
  end type
END MODULE
PROGRAM MAIN
USE MOD1
IMPLICIT NONE
 type(ty(8,k3=4,k2=2)) :: obj
 type(ty(4,k2=8,k3=4)) :: obj1
 type(ty(2,k3=2,k2=4)) :: obj2
 IF((KIND(obj%arr1) .eq. 8) .and. (kind(obj1%arr1) .eq. 4) .and. (kind(obj2%arr1) .eq. 2)) then
   print*,"PASS"
 else
   print*,"ERROR"
 endif
END
