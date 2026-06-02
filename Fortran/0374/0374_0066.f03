call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

module mod1
type tt
 integer :: ip
end type
type ty1
 integer :: i1 = 1
 type(tt) :: i1p = tt(2)
 integer,allocatable :: i1a(:)
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
str=ty1(i1a=ia+1,i1p=tt(5))
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.5) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
str=ty1(i1a=ia+1,i1p=tt(5),i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1p%ip.ne.5) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
end



module mod2
type tt
 integer,private :: ip=99
end type
type ty1
 integer :: i1 = 1
 type(tt) :: i1p = tt(2)
 integer,allocatable :: i1a(:)
 integer ,private :: vvv=1
end type
save
type(ty1) :: str
contains
subroutine isub1()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.2) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub2()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub3()
if (str%i1.ne.8) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
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
if (str%i1a(1).ne.2) print *,'fail'
call isub1()
str=ty1(i1a=ia+1,i1p=tt())
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub2()
str=ty1(i1a=ia+1,i1p=tt(),i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub3()
end
module mod3
type tt
 integer,private :: ip=99
 integer,private :: i1=88
end type
type ty1
 integer :: i1 = 1
 type(tt) :: i1p = tt(2,3)
 integer,allocatable :: i1a(:)
 integer ,private :: vvv=1
end type
save
type(ty1) :: str
contains
subroutine isub1()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.2) print *,'fail'
if (str%i1p%i1.ne.3) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub2()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1p%i1.ne.88) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub3()
if (str%i1.ne.8) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1p%i1.ne.88) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
end
subroutine test03()
use mod3
integer,allocatable :: ia(:)
allocate(ia(10))
ia=2
str=ty1(i1a=ia)
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
call isub1()
str=ty1(i1a=ia+1,i1p=tt())
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub2()
str=ty1(i1a=ia+1,i1p=tt(),i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub3()
end
module mod4
type tt
 integer,private :: ip=99
 integer :: i1=88
end type
type ty1
 integer :: i1 = 1
 type(tt) :: i1p = tt(2,3)
 integer,allocatable :: i1a(:)
 integer ,private :: vvv=1
end type
save
type(ty1) :: str
contains
subroutine isub1()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.2) print *,'fail'
if (str%i1p%i1.ne.3) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub2()
if (str%i1.ne.1) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1p%i1.ne.88) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub3()
if (str%i1.ne.8) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1p%i1.ne.88) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
subroutine isub4()
if (str%i1.ne.8) print *,'fail'
if (str%i1p%ip.ne.99) print *,'fail'
if (str%i1p%i1.ne.77) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
if (str%vvv.ne.1) print *,'fail'
end subroutine
end
subroutine test04()
use mod4
integer,allocatable :: ia(:)
allocate(ia(10))
ia=2
str=ty1(i1a=ia)
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.2) print *,'fail'
call isub1()
str=ty1(i1a=ia+1,i1p=tt())
if (str%i1.ne.1) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub2()
str=ty1(i1a=ia+1,i1p=tt(),i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub3()
str=ty1(i1a=ia+1,i1p=tt(i1=77),i1=8)
if (str%i1.ne.8) print *,'fail'
if (str%i1p%i1.ne.77) print *,'fail'
if (str%i1a(1).ne.3) print *,'fail'
call isub4()
end
