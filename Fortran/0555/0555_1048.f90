  module m1
    type x
      integer::x1
    end type
    type , extends(x):: xx
      integer x2
    end type
contains
  subroutine s1(a)
  class (*)::a(:,:,:)
  if (any(lbound(a,3)/=[1]))print *,101
  if (size(a,3)/=3)print *,102
  end subroutine
end module
  use m1
  type(x) :: obj(2,1,3)
  obj=x(1)
  call s1(obj)
  print *,'pass'
  end
