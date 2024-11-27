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
integer :: array(6)
if (any(array.ne.1)) print *,'err'
if (1.eq.2) print *,this%iii
end subroutine typeA_foo
function  ftypeA_foo( this, array )
class(typeA), intent(in) :: this
integer :: array(2,3)
integer :: ftypeA_foo
if (any(array.ne.1)) print *,'err'
ftypeA_foo =1
if (1.eq.2) print *,this%iii
end function ftypeA_foo
end module class_mod

program main
use class_mod
implicit none
type(typeA) :: type_a
type tt
integer ::array(6)
end type
type(tt) ::str(6)
integer ::call
do call =1,6
str(call)%array(:) = 1
end do
call typeA_foo(type_a,str(1:6)%array(1))
call foo(type_a,str(1:6)%array(1))
call type_a%foo(str(1:6)%array(1))
call= type_a%ffoo(str(1:6)%array(1))
if (call .ne.1 ) print *,'NG'
print *,'pass'
end program main
