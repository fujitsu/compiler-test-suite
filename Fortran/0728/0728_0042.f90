call sub01()
call sub02()
print *,'pass'
end

module mod01
private aaa ;
type aaa ; integer :: a(10) ; end type ;
type ccc ; integer :: c(10) ; end type ;
end module 
module mod01a
use    mod01
type(ccc) :: st1
contains
subroutine mod01a_sub()
st1%c=(/1,2,3,4,5,6,7,8,9,10/)
end subroutine
end module 
module mod01b
use    mod01
type(ccc) :: st2
contains
subroutine mod01b_sub()
st2%c=(/1,2,3,4,5,6,7,8,9,10/)+1
end subroutine
end module 
subroutine sub01()
use mod01a
use mod01b
call mod01b_sub()
call mod01a_sub()
if (any(st1%c.ne.(/1,2,3,4,5,6,7,8,9,10/),1)) write(6,*) "NG"
if (any(st2%c.ne.(/1,2,3,4,5,6,7,8,9,10/)+1,1)) write(6,*) "NG"
end subroutine

module mod02
private aaa ;
type aaa ; type(ccc),pointer :: a ; end type ;
type ccc ; integer :: c ; end type ;
end module 
module mod02a
use    mod02
type(ccc) :: st1
end module 
module mod02b
use    mod02
end module 
subroutine sub02()
use mod02a
use mod02b
end subroutine

module mod03
private aaa ;
type aaa ; type(ccc),pointer :: a ; end type ;
type ccc ; integer :: c ; end type ;
end module 
module mod03a
use    mod03
end module 
module mod03b
use    mod03
type(ccc) :: st2
end module 
subroutine sub03()
use mod03a
use mod03b
end subroutine

module mod04
private aaa ;
type aaa ; type(ccc),pointer :: a ; end type ;
type ccc ; integer :: c ; end type ;
end module 
module mod04a
use    mod04
type(ccc) :: st1
end module 
module mod04b
use    mod04
type(ccc) :: st2
end module 
module mod04c
use    mod04a
end module 
module mod04d
use    mod04b
end module 
subroutine sub04()
use mod04d
use mod04c
end subroutine

module mod05
private aaa ;
type aaa ; type(ccc),pointer :: a ; end type ;
type ccc ; integer :: c ; end type ;
end module 
module mod05a
use    mod05
end module 
module mod05b
use    mod05
end module 
module mod05c
use    mod05a
end module 
module mod05d
use    mod05b
type(ccc) :: st2
end module 
subroutine sub05()
use mod05d
use mod05c
type(ccc) :: st1
end subroutine

module mod06
private aaa ;
type aaa ; type(ccc),pointer :: a ; end type ;
type ccc ; integer :: c ; end type ;
end module 
module mod06a
use    mod06
end module 
module mod06b
use    mod06
type(ccc) :: st1
end module 
module mod06c
use    mod06a
end module 
module mod06d
use    mod06b
type(ccc) :: st2
end module 
subroutine sub06()
use mod06d
use mod06c
end subroutine
