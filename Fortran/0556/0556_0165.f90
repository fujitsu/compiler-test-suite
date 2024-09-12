  module m1
    type x
      integer::x1
    end type
    type , extends(x):: xx
      integer:: x2
    end type
  end 
  subroutine s1
  use m1
  class (*),allocatable::a(:,:,:,:,:,:,:)
  allocate(x::a(2,4,3,4,2,2,3))
  if (any(ubound(a,2)/=[4]))print *,101
  if (size(a,2)/=4)print *,102
  end
  call s1
  print *,'134 pass'
  end
