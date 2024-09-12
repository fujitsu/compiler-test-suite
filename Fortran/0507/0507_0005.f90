module class_mod
  implicit none
  type, public :: typeA
     integer::x
  contains
    procedure :: aa => typeA_aa
  end type
contains
  elemental impure function   typeA_aa( this, array, n1, n2 ) result(r)
    class(typeA), intent(in) :: this
    integer, intent(in) :: n1, n2
    real(8), intent(in) :: array
    integer::r
    write(1,*) "typeA aa:", array
    if (   (array/=1)) print *,201
    if (this%x/=1) print *,301
    r=1
  end 
end module 

subroutine s1
  use class_mod, only: typeA
  implicit none

  integer, parameter :: n1 = 2
  integer, parameter :: n2 = 3
  type(typeA) :: type_a
  real(8) :: array(n1,n2)
  integer::r(n1,n2)

  type_a%x=1
  array(:,:) = 1.0D0
  r=   type_a%aa(array(:,:),1,3)
  if (any(r/=1)) print *,2001
end
call s1
print *,'pass'
end 
