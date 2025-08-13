module class_mod
implicit none
type, public :: typeA
integer :: iii
 contains
 procedure :: foo => typeA_foo
 procedure :: ffoo => ftypeA_foo
 generic::gnr=>foo
end type
 procedure(typeA_foo),pointer :: foo => typeA_foo
interface gnr
 procedure typeA_foo
end interface
contains
subroutine typeA_foo( this, array )
class(typeA), intent(in) :: this
character(3) :: array(6)
if ((array(1).ne.'123')) print *,'err'
if (1.eq.2) print *,this%iii
end subroutine typeA_foo
function  ftypeA_foo( this, array )
class(typeA), intent(in) :: this
character(3) :: array(2,3)
integer :: ftypeA_foo
if ((array(1,1).ne.'123')) print *,'err'
ftypeA_foo =1
if (1.eq.2) print *,this%iii
end function ftypeA_foo
end module class_mod

program main
use class_mod
implicit none
type(typeA) :: type_a
type tt
character(3) ::array(6)
end type
type(tt) ::str(1,1,6)
integer ::call
do call =1,6
str(1,1,call)%array(:) = '123'
end do
call typeA_foo(type_a,str(1:1,1:1,1:)%array(1)(1:))
call foo(type_a,str(1:1,1:1,1:)%array(1)(1:))
call type_a%foo(str(1:1,1:1,1:)%array(1)(1:))
call= type_a%ffoo(str(1:1,1:1,1:)%array(1)(1:))
if (call .ne.1) print *,'NG'
print *,'pass'
end program main
