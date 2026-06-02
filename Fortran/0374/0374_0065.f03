call test01()
print *,"pass"
end

module mod1
type tt
 integer :: ip
end type
type ty1
 integer :: i1 = 1
 type(tt),pointer :: i1p =>NULL()
 integer,allocatable :: i1a(:)
 integer ,private :: vvv=1
end type
save
type(ty1) :: str
contains
subroutine isub()
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
end
subroutine test01()
use mod1
integer,allocatable :: ia(:)
allocate(ia(10))
ia=2
str=ty1(i1a=ia)
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
call isub()
end
