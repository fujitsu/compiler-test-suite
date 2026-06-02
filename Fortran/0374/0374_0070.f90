module mod
common /com/ iii
bind(c) :: /com/
type,bind(c) :: ty1
 integer :: vvv
end type
type(ty1) ,bind(c) :: vvv
contains
subroutine isub()
if (iii.ne.1) print *,'fail'
end subroutine
subroutine isub2(jjj)
if (iii.ne.jjj) print *,'fail'
end subroutine
end

use mod
iii=1
call isub()
call sub()
print *,"pass"
end

subroutine  sub()
use mod
iii=2
call isub2(iii)
end subroutine 
