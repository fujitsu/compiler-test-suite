  module m1
    type x
      integer::x1
    end type
    type , extends(x):: xx
      integer x2
    end type
contains
  subroutine s1(a)
  class (*),allocatable::a(:)
  if (any(lbound(a)/=[1]))print *,101
  if (size(a)/=2)print *,102
  end subroutine
end module
  use m1
  class(*),allocatable::act(:)
  allocate(x::act(2))
  call s1(act)
  print *,'pass'
  end
