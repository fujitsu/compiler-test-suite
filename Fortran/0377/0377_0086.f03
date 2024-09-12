module mod
type ty1
 integer i
 integer ,private :: j = 1
end type
save
contains
subroutine suba()
type (ty1) ::str
str=ty1(1,2)
str=ty1(i=1,j=2)
end subroutine
end

module mod1
use mod
type (ty1) :: str
save
contains
subroutine sub()
str=ty1(i=1)
end subroutine
end

use mod
type (ty1) :: str
type ttt
 integer :: i
end type
type(ttt) :: sss
sss=ttt(1)
print *,"pass"
contains
subroutine sub()
str=ty1(1)
end subroutine
end

