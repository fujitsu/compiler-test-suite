module class_mod
implicit none
type, public :: typeA
integer :: iii
 contains
 procedure :: hoge => typeA_hoge
 procedure :: hoges => typeA_hoges
 procedure :: fhoge => ftypeA_hoge
 procedure :: fhoges => ftypeA_hoges
 generic::gnr=>hoge!,hoges
 generic::gnrs=>fhoges
end type
 procedure(typeA_hoge),pointer :: hoge => typeA_hoge
 procedure(typeA_hoges),pointer :: hoges => typeA_hoges
interface gnr
 procedure typeA_hoge,typeA_hoges
end interface
interface gnrs
 procedure ftypeA_hoge,ftypeA_hoges
end interface
contains
subroutine typeA_hoge( this, array )
class(typeA), intent(in) :: this
real    :: array(6)
!write(*,*) "typeA hoge:", array
if (any(array.ne.1)) print *,'err4'
if (1.eq.2) print *,this%iii
end subroutine typeA_hoge
subroutine typeA_hoges( this, array )
class(typeA), intent(in) :: this
real    :: array!(6)
!write(*,*) "typeA hoge:", array
if (array.ne.1) print *,'err3'
if (1.eq.2) print *,this%iii
end subroutine
function  ftypeA_hoge( this, array )
class(typeA), intent(in) :: this
real    :: array(2,3)
integer :: ftypeA_hoge
!write(*,*) "typeA hoge:", array
if (any(array.ne.1)) print *,'err2'
ftypeA_hoge =1
if (1.eq.2) print *,this%iii
end function ftypeA_hoge
function  ftypeA_hoges( this, array )
class(typeA), intent(in) :: this
real    :: array
integer :: ftypeA_hoges
!write(*,*) "typeA hoge:", array
if (array.ne.1) print *,'err1'
ftypeA_hoges =1
if (1.eq.2) print *,this%iii
end function
end module class_mod

program main
use class_mod
implicit none
type(typeA) :: type_a
complex :: array(2,3),call
array(:,:) = 1
call typeA_hoge(type_a,array(:,:)%RE)
call typeA_hoges(type_a,array(1,1)%RE)
!call gnrs(type_a,array(1,1)%RE)
call hoges(type_a,array(1,1)%RE)
call type_a%hoge(array(:,:)%RE)
call type_a%hoges(array(1,1)%RE)
call= type_a%fhoge(array(:,:)%RE)
!call= type_a%fhoge(array(1,1)%RE)
call =call
print *,'pass'
end program main

