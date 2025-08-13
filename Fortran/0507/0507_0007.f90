module class_mod
  implicit none
  type, public :: typeA
     integer::x
  contains
    procedure :: aa => typeA_aa
  end type
contains
  subroutine typeA_aa( this, array, n1, n2 )
    class(typeA), intent(in) :: this
    integer, intent(in) :: n1, n2
    real(8), intent(in) :: array(*    )
    write(11,*) "typeA aa:", array(:n1*n2)
    if (any(array(:n1*n2)/=1)) print *,201
    if (this%x/=1) print *,301
  end subroutine typeA_aa
end module class_mod

program main
  use class_mod, only: typeA
  implicit none

  integer, parameter :: n1 = 2
  integer, parameter :: n2 = 3
  type(typeA) :: type_a
  real(8) :: array(n1,n2)

  type_a%x=1
  array(:,:) = 1.0D0
  call type_a%aa(array, n1, n2)

print *,'pass'
end program main
