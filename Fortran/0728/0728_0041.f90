call sub01()
print *,'pass' 
end

module mod01_base ;
private aaa ;
type aaa ; integer :: a ; end type  ;
type ccc ; integer :: c ; end type ;
end module ;
module mod01b_base ;
private bbb ;
type aaa ; integer :: a ; end type ;
type bbb ; integer :: c ; end type ;
end module ;

module mod01a ; use mod01b_base ; end module
module mod01b ; use mod01_base ; end module
subroutine sub01()
use mod01b_base
use mod01a
use mod01b
end 

module mod02a ; use mod01b_base ; end module
module mod02b ; use mod01_base ; end module
subroutine sub02()
use mod01_base
use mod01b_base
use mod02a
use mod02b
end

module mod03a ; use mod01b_base ; end module
module mod03b ; use mod01_base;use mod03a ; end module
subroutine sub03()
use mod03a
use mod03b
end

module mod04a ; use mod01b_base ; end module
module mod04b ; use mod01_base;use mod04a ; end module
subroutine sub04()
use mod04a
use mod04b
use mod01b_base
use mod01_base
end

module mod05a ; use mod01b_base ; end module
module mod05b ; use mod01_base;use mod01b_base ; end module
subroutine sub05()
use mod05a
use mod05b
use mod01b_base
use mod01_base
end

module mod06a ; use mod01b_base ; end module
module mod06b ; use mod01_base;use mod01b_base ; end module
subroutine sub06()
use mod06a
use mod06a
end
