module mod
type ty1
 integer :: a =2
end type

type,extends(ty1) :: tya
end type
type,extends(tya) :: tyy
end type

type,extends(ty1) :: ty2
 type(tyy) :: sss = tyy(tya(ty1(1)))
end type
end module

use mod
type,extends(ty2) :: ty3
end type

type(ty3) :: str
if (str%sss%a .ne.1) print *,'fail'
print *,'pass '
end
