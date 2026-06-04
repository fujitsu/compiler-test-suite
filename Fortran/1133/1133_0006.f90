module m0
  type ty
    integer :: a
  contains
    procedure :: prc1
    generic :: gen2=>prc1
  end type
contains
  integer function prc1( this,a,b,c,d,e,f )
    integer,optional :: a,c,e
    integer :: b,d,f
    class(ty),intent(out) :: this
    if (b/=1) print *,'err'
    if (d/=2) print *,'err'
    if (f/=3) print *,'err'
    prc1=1
    if (present(a)) prc1=2
  end function
end

use m0
type (ty) :: v2
if (v2%prc1(f=3,d=2,b=1) /= 1) print *,'err'
if (v2%gen2(b=1,d=2,f=3) /= 1) print *,'err'
if (v2%prc1(1,1,2,2,3,3) /= 2) print *,'err'
if (v2%gen2(1,1,2,2,3,3) /= 2) print *,'err'
print *,'pass'
end

