module class_mod
implicit none
type, public :: typeA
 contains
 procedure :: foo => typeA_foo
 procedure :: ffoo => ftypeA_foo
 generic::gnr=>foo
end type
interface gnr
 procedure typeA_foo
end interface
contains
subroutine typeA_foo( this, array )
class(typeA), intent(in) :: this
integer :: array(6)
if (1.eq.2) write(*,*) "typeA foo:", array
end subroutine typeA_foo
function  ftypeA_foo( this, array )
class(typeA), intent(in) :: this
integer :: array(2,3)
integer :: ftypeA_foo
if (1.eq.2) write(*,*) "typeA foo:", array
ftypeA_foo =1
end function ftypeA_foo
end module class_mod

program main
use class_mod
implicit none
type(typeA) :: type_a
integer :: array(2,3),call
array(:,:) = 1
call typeA_foo(type_a,array(1,1))
call type_a%foo(array(1,1))
call= type_a%ffoo(array(1,1))
if (call .ne.1 ) print *,'NG'
print *,'pass'
end program main

