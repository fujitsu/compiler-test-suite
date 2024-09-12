module mod1
implicit none
type ty(k,l)
  integer,kind :: k
  integer,kind :: l=1
  integer(kind = k+2) :: i = 1+k+l
end type
type ty1(k1)
 integer,kind :: k1
 type(ty(k=k1))::obj
 integer :: j = k1+3
end type
end module

program main
use mod1
implicit none
type ty2(k2)
integer,kind :: k2
type(ty1(k1=k2))::obj1
end type
type(ty2(k2=2))::obj2

IF((kind (obj2%obj1%obj%i) .eq. 4) .AND. (obj2%obj1%obj%i .eq. 4)) THEN
   IF(obj2%obj1%j .eq. 5) THEN
   PRINT*,"PASS"
   ELSE
   PRINT*,"ERROR"
   ENDIF
ELSE
   PRINT*,"ERROR"
ENDIF
end
