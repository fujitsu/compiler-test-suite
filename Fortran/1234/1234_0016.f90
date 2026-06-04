module m1
  type x0
     character(:),allocatable::x01
  end type
end
module m2
  use m1
  type,extends( x0 ):: x1
     character(:),allocatable::x11
  end type
end
module m3
  use m2
  type,extends( x1 ):: x2
     character(:),allocatable::x21
  end type
end
module m4
  use m3
  type(x2):: x3
  contains
  subroutine ss
  call s1(x3)
  end
  subroutine s1(d)
  class(x0),intent(out)::d
  class(x0),allocatable::a
  allocate(d%x01,source='12')
  select type(d)
    type is(x2)
  allocate(d%x11,source='12')
  allocate(d%x21,source='12')
  end select
  allocate(a,source=d)
  k=0
  select type(a)
    type is(x2)
      k=1
      a%x01='34'
      a%x11='34'
      a%x21='34'
  end select
  if (k/=1) print *,2892
  k=0
  select type(d)
    type is(x2)
      k=1
      if (d%x01/='12') print *,3001
      if (d%x11/='12') print *,3002
      if (d%x21/='12') print *,3003
  end select
  if (k/=1) print *,2992
end
end
use m4
  call ss
  print *,'sngg661t : pass'
 end
  
