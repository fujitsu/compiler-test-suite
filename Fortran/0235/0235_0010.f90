module mod
type ty1
end type
type,extends(ty1) :: tya
end type
end
module mod2
save
type ty1
 integer :: a 
end type
type,extends(ty1) :: tya
end type
end
use mod
use mod2
print *,"pass"
end
subroutine chk
integer str(2)
namelist /na1/str
namelist /na2/str
rewind 60
read(60,na1)
if (str(1)/=2222) print *,1001
if (str(2)/=2222) print *,1002
rewind 61
read(61,na2)
if (str(1)/=3333) print *,1011
if (str(2)/=3333) print *,1022
end
