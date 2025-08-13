module class_mod
implicit none
type, public :: typeA
 contains
 procedure :: aa => typeA_aa
 procedure :: faa => ftypeA_aa
 generic::gnr=>aa
end type
interface gnr
 procedure typeA_aa
end interface
contains
subroutine typeA_aa( this, array )
class(typeA), intent(in) :: this
integer :: array(6)
write(7,*) "typeA aa:", array
end subroutine typeA_aa
function  ftypeA_aa( this, array )
class(typeA), intent(in) :: this
integer :: array(2,3)
integer :: ftypeA_aa
write(7,*) "typeA aa:", array
ftypeA_aa=1
end function ftypeA_aa
end module class_mod

program main
use class_mod
implicit none
type(typeA) :: type_a
integer :: array(2,3),call
array(:,:) = 1
call typeA_aa(type_a,array(1,1))
call type_a%aa(array(1,1))
call= type_a%faa(array(1,1))
if (call/=1) print *,1001
print *,'pass'
end program main

