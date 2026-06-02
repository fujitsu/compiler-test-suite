module m
  type :: ty
   integer::ii=10
  contains
    procedure, nopass :: prc1
  end type
contains
function prc1(this)                      !1)
class(ty),intent(in)::this(:)
    integer :: prc1(size(this))
    prc1 = this%ii+1
  end function
end module

use m
  class(ty), allocatable :: x(:)
  type(ty) :: obj(4)
integer kk(4)
  allocate(x ,source=obj)
  write(24,*)prc1(x(:))                             !2)
rewind 24
read(24,*)kk
if (any(kk/=11)) print *,9001
print *,'sngg257k : pass'
end

