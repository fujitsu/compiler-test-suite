  module m1
    type x
      integer::x1
    end type
    type , extends(x):: xx
      integer x2
    end type
contains
  subroutine s1(a)
  class (*),pointer::a(:)
  if (any(ubound(a)/=[2]))print *,101
  if (size(a)/=2)print *,102
  end subroutine
end module
  use m1
  type(x),target :: obj(2)
  class(*),pointer::act(:)
  obj=x(1)
  act=>obj
  call s1(act)
  print *,'130 pass'
  end
