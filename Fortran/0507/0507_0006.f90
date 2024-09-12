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
    character,intent(in) :: array(n1*n2)
    write(1,*) "typeA aa:", array(:)
    if (any(array(:)/='1')) print *,201
    if (this%x/=1) print *,301
  end subroutine typeA_aa
end module class_mod

  use class_mod, only: typeA
  implicit none

  integer, parameter :: n1 = 2
  integer, parameter :: n2 = 3
  type(typeA) :: type_a
  character :: array(n1,n2)

  type_a%x=1
  array(:,:) = '1'
  call type_a%aa(array(1,1)(1:1), n1, n2)

print *,'pass'
end 