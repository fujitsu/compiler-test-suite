module m0
  type ty
    integer :: a
  contains
    procedure :: prc1
    generic :: gen2=>prc1
  end type
contains
  integer function prc1( this,a,b,c,d,e )
    integer,optional :: a,b,c,d
    integer :: e
    class(ty),intent(out) :: this
    if (e/=2) print *,'err'
    prc1=1
  end function
end

use m0
type (ty) :: v2
if (v2%prc1(e=2) /= 1) print *,'err'
if (v2%gen2(e=2) /= 1) print *,'err'
print *,'pass'
end

