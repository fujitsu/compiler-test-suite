call sub01()
call sub02()
print *,'pass' 
end

module mod_base
type bbb
   integer :: be1
end type 
private bbb,ccc,aaa
type aaa
   type (bbb), pointer :: ae1
   type (ccc), pointer :: ae2
end type 
type ccc
   integer :: be1
end type
end module
module mod1
use mod_base
type bbb
   integer :: be1
end type
end module
module mod2
use mod_base
type bbb
   integer :: be1
end type
end module
subroutine sub01()
use mod1
use mod2
end 

module mod02_base
private iii
parameter (iii=10)
parameter (jjj=20)
end module
module mod02a1  ; use mod02_base  ; end module
module mod02a2  ; use mod02_base  ; end module
subroutine sub02()
use mod02a1
use mod02a2
if (jjj.ne.20) write(6,*) "NG"
end 
