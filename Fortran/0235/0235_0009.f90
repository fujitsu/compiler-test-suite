module mod
type ty1
 integer :: a = 2222
end type
type,extends(ty1) :: tya
end type
type,extends(tya) :: tyy
end type
type,extends(ty1) :: ty2
 type(tyy) :: sss
end type
type,extends(ty2) :: ty3
end type
type(ty3) :: str
namelist /na1/ str
save
end
module mod2
save
type ty1
 integer :: a = 3333
end type
type,extends(ty1) :: tya
end type
type,extends(tya) :: tyy
end type
type,extends(ty1) :: ty2
 type(tyy) :: sss
end type
type,extends(ty2) :: ty3
end type
type(ty3) :: str
namelist /na2/ str
end
use mod
use mod2
write(62,na1)
write(63,na2)
call chk
print *,"pass"
end
subroutine chk
integer str(2)
namelist /na1/str
namelist /na2/str
rewind 62
read(62,na1)
if (str(1)/=2222) print *,1001
if (str(2)/=2222) print *,1002
rewind 63
read(63,na2)
if (str(1)/=3333) print *,1011
if (str(2)/=3333) print *,1022
end
