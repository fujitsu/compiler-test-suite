call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
print *,'pass' 
end

module mod01_base
private aaa
type aaa
   type (ccc), pointer :: ae2
end type 
type ccc
   integer :: be1
end type
end module
module mod01a ; use mod01_base,sss=>ccc ; end module
module mod01b ; use mod01_base,sss=>ccc ; end module
subroutine sub01()
use mod01a
use mod01b
end 

module mod02_base
private aaa
type aaa
   type (ccc), pointer :: ae2
end type
type ccc
   integer :: be1
end type
end module
module mod02a_base
use mod02_base
end module
module mod02a ; use mod02_base ; end module
module mod02b ; use mod02_base ; end module
subroutine sub02()
use mod02a
use mod02b
end

module mod03_base
private aaa
type aaa
   type (ccc), pointer :: ae2
end type
type ccc
   integer :: be1
end type
type (ccc) :: str
end module
module mod03a ; use mod03_base ; end module
module mod03b ; use mod03_base ; end module
subroutine sub03()
use mod03a
use mod03b
str%be1=100
end

module mod04_base
private aaa
type aaa
   type (ccc), pointer :: ae2
end type
type ccc
   integer :: be1
end type
end module
module mod04a ; use mod04_base;type (ccc) :: str ; end module
module mod04b ; use mod04_base;type (ccc) :: st2 ; end module
subroutine sub04()
use mod04a
use mod04b
str%be1=100
st2%be1=100
end

module mod05_base
private aaa,vvv
type aaa
   type (ccc), pointer :: ae2
end type
type ccc
   integer :: be1
end type
type (ccc) vvv,zzz
end module
module mod05a ; use mod05_base ,xxx=>zzz; end module
module mod05b ; use mod05_base ,yyy=>zzz; end module
subroutine sub05()
use mod05a
use mod05b
xxx%be1=1
yyy%be1=1
end

module mod06_base
private aaa,vvv
type aaa
   type (ccc), pointer :: ae2
end type
type ccc
   integer :: be1
end type
type (ccc) vvv,zzz
end module
module mod06a ; use mod06_base ,xxx=>zzz; end module
module mod06b ; use mod06_base ,yyy=>zzz; end module
subroutine sub06()
use mod06a,yyy=>xxx
use mod06b,xxx=>yyy
xxx%be1=1
yyy%be1=1
end
