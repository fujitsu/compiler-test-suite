module class_mod
  implicit none
  type, public :: typeA
   integer::x
  contains
    procedure :: aa => typeA_aa
    procedure :: aa2 => typeA_aa2
  end type
contains
  subroutine typeA_aa( this, array, n1, n2 )
    class(typeA), intent(in) :: this
    integer, intent(in) :: n1, n2
    real(8), intent(in) :: array(n1*n2)
    write(1,*) "typeA aa:", array(:)
    if (this%x/=1) print *,2020
    if (any(array/=1)) print *,9001
  end subroutine typeA_aa
  subroutine typeA_aa2( this, array, n1, n2 )
    class(typeA), intent(in) :: this
    integer, intent(in) :: n1, n2
    real(8), intent(in) :: array(n1,n2)
    write(2,*) "typeA aa:", array(:,:)
    if (this%x/=1) print *,2021
    if (any(array/=1)) print *,9002
  end subroutine 
end module class_mod

program main
  use class_mod, only: typeA
  implicit none

  integer, parameter :: n1 = 2
  integer, parameter :: n2 = 3
  type(typeA) :: type_a
  real(8) :: array(n1,n2)
  real(8) :: array1(n1*n2)

  array(:,:) = 1.0D0
  array1(:) = 1.0D0
   type_a%x=1
  call type_a%aa(array, n1, n2)
  call type_a%aa2(array1, n1, n2)
  call type_a%aa(array1, n1, n2)
  call type_a%aa2(array, n1, n2)

print *,'pass'
end program main
