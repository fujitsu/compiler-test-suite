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
subroutine typeA_foo( this, ii,array,jj )
class(typeA), intent(in) :: this
integer :: array(6),ii,jj
if (any(array.ne.1)) print *,'err'
if (1.eq.2) print *,this%iii
if (1.eq.2) print *,ii,jj
end subroutine typeA_foo
function  ftypeA_foo( this, ii,array,jj )
class(typeA), intent(in) :: this
integer :: array(2,3) ,ii,jj
integer :: ftypeA_foo
if (any(array.ne.1)) print *,'err'
if (1.eq.2) print *,ii,jj
ftypeA_foo =1
if (1.eq.2) print *,this%iii
end function ftypeA_foo
end module class_mod

program main
use class_mod
implicit none
type(typeA) :: type_a
integer :: array(2,3),call
array(:,:) = 1
call typeA_foo(type_a,1,jj=1,array=array(1,1))
call foo(type_a,1,jj=1,array=array(1,1))
call type_a%foo(1,jj=1,array=array(1,1))
call= type_a%ffoo(1,jj=1,array=array(1,1))
if (call .ne.1 ) print *,'NG'
print *,'pass'
end program main
