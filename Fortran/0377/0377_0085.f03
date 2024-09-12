call test01()
print *,"pass"
end

module mod
type ty1
 integer :: i1
 integer,private :: i2 = 1
 integer :: i3
end type
type (ty1) :: str
save
contains
subroutine subb()
str=ty1(i1=1,i2=1,i3=1)
str=ty1(1,2,3)
end subroutine
end

module mod1
use mod
contains
subroutine subba()
str=ty1(i1=1,i3=1)
end subroutine
end

subroutine test01()
use mod
call subb()
end subroutine
