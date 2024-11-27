call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
print *,'pass' 
end

module mod01_base
type bbb
   integer :: be1
end type
private aaa
type aaa
   type (bbb) :: xxx
end type 
type ccc
   type (bbb) :: xxx
end type
end module
module mod01a ; use mod01_base ; end module
module mod01b ; use mod01_base ; end module
subroutine sub01()
use mod01a
use mod01b
end 

module mod02
type bbb
   integer :: be1
end type
end module
module mod02_base
use mod02
private aaa
type aaa
   type (bbb) :: xxx
end type
type ccc
   type (bbb) :: xxx
end type
end module
module mod02a ; use mod02_base ; end module
module mod02b ; use mod02_base ; end module
subroutine sub02()
use mod02a
use mod02b
end

module mod03
type bbb
   integer :: be1
end type
private aaa
type aaa
   type (bbb) :: xxx
end type
end module
module mod03_base
use mod03
type ccc
   type (bbb) :: xxx
end type
end module
module mod03a ; use mod03_base ; end module
module mod03b ; use mod03_base ; end module
subroutine sub03()
use mod03a
use mod03b
end

module mod04
type bbb
   integer :: be1
end type
private aaa
type aaa
   type (bbb) :: xxx
end type
type ccc
   type (bbb) :: xxx
end type
end module
module mod04_base
use mod04
end module
module mod04a ; use mod04_base ; end module
module mod04b ; use mod04_base ; end module
subroutine sub04()
use mod04a
use mod04b
end

module mod05
type bbb
   integer :: be1
end type
private aaa
type aaa
   type (bbb) :: xxx
end type
type ccc
   type (bbb) :: xxx
end type
end module
module mod05_base
use mod05
end module
module mod05a ; use mod05_base;use mod05 ; end module
module mod05b ; use mod05_base;use mod05 ; end module
subroutine sub05()
use mod05a
use mod05b
end

module mod06
type bbb
   integer :: be1
end type
private aaa
type aaa
   type (bbb) :: xxx
end type
type ccc
   type (bbb) :: xxx
end type
end module
module mod06_base
use mod06
use mod06
end module
module mod06a ; use mod06_base ; end module
module mod06b ; use mod06_base;use mod06 ; end module
subroutine sub06()
use mod06
use mod06a
use mod06b
end
