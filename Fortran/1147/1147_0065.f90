module class_mod
  implicit none
  type, public :: typeA
     integer::x
  contains
    procedure :: hoge => typeA_hoge
  end type
contains
  subroutine typeA_hoge( this, array, n1, n2 )
    class(typeA), intent(in) :: this
    integer, intent(in) :: n1, n2
    real(8), intent(in) :: array(n1*n2)
    write(50,*) "typeA hoge:", array(:)
    if (any(array(:)/=1)) print *,201
    if (this%x/=1) print *,301
  end subroutine typeA_hoge
end module class_mod
module km
  use class_mod, only: typeA
  implicit none
  private
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end

submodule(km)smod
contains
  module subroutine sub

  integer, parameter :: n1 = 2
  integer, parameter :: n2 = 3
  type(typeA) :: type_a
  real(8) :: array(n1,n2)
  !--
  type_a%x=1
  array(:,:) = 1.0D0
  call type_a%hoge(array, n1, n2)
end
end
use km
call sub

print *,'sngg978n : pass'
end
