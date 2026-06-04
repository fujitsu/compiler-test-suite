call test01()
call test02()
print *,"pass"
end

module mod1
type,private:: tt
 integer :: ip
end type
type:: ty1
private
 integer,public :: i1 = 1
 type(tt),public :: i1p = tt(2)
 integer,public,allocatable :: i1a(:)
 integer ,private :: vvv=1
end type
save
type(ty1) :: str
contains
subroutine isub()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.2) print *,'fail'
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
if (str%i1p%ip.ne.2) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
call isub()
str=ty1(i1a=ia+1)
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
str=ty1(i1a=ia+1,i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
end


module mod2
type,private:: tt
 integer :: ip = 1
end type
type,extends(tt):: ty1
private
 integer,public :: i1 = 1
 type(tt),public :: i1p = tt(2)
 integer,public,allocatable :: i1a(:)
 integer ,private :: vvv=1
end type
save
type(ty1) :: str
contains
subroutine isub()
if (str%ip.ne.1) print *,'fail'
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.2) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
end
subroutine test02()
use mod2
integer,allocatable :: ia(:)
allocate(ia(10))
ia=2
str=ty1(i1a=ia)
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.2) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
call isub()
str=ty1(i1a=ia+1)
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
str=ty1(i1a=ia+1,i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
end
