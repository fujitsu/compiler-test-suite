  module m1
    type x
      integer::x1
    end type
    type , extends(x):: xx
      integer x2
    end type
  end 
  subroutine s1
  use m1
  class (*),pointer::a(:)
  allocate(x::a(2:4))
  if (any(lbound(a)/=[2]))print *,101
  if (size(a)/=3)print *,102
  end
  call s1
  print *,'pass'
  end
