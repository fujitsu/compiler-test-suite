module mod
type ty1
 integer,private :: i1=1
end type
end
use mod
type,extends(ty1) ::  ty2
 integer :: i1
end type
type (ty2) :: str=ty2(i1=2)
str=ty2(i1=2)
write(1,*)str
print *,'pass'
end
