module m1
  type x0
     character(:),allocatable::x01
  end type
  type y0
     character(:),allocatable::y01
  end type
end
module m2
  use m1
  type yy0
     character(:),allocatable::x12y
     type(y0),allocatable::x12z
  end type
  type,extends( x0 ):: x1
     character(:),allocatable::x11
     type(yy0)::x12
  end type
  type,extends( y0 ):: y1
     character(:),allocatable::y11
  end type
end
module m3
  use m2
  type yy1
     character(:),allocatable::x22y
     type(y1),allocatable::x22z
  end type
  type,extends( x1 ):: x2
     character(:),allocatable::x21
     type(yy1)::x22
  end type
  type,extends( y1 ):: y2
     character(:),allocatable::y21
  end type
end
module m4
  use m3
  type yy2
     character(:),allocatable::x32y
     type(y2),allocatable::x32z
  end type
  type,extends(x2):: x3
     character(:),allocatable::x31
     type(yy2):: y32
  end type
  contains
  subroutine ss
  type(x3)::v
  call s1(v )
  end
  subroutine s1(d)
  class(x0),intent(out)::d
  class(x0),allocatable::a
  allocate(d%x01,source='12')
  select type(d)
    type is(x3)
  allocate(d%x11,source='12')
  allocate(d%x12%x12y,source='12')
  allocate(d%x12%x12z)
  allocate(d%x12%x12z%y01,source='12')
  allocate(d%x21,source='12')
  allocate(d%x22%x22y,source='12')
  allocate(d%x22%x22z)
  allocate(d%x22%x22z%y01,source='12')
  allocate(d%x22%x22z%y11,source='12')
  allocate(d%x31,source='12')
  allocate(d%y32%x32y,source='12'            )
  allocate(d%y32%x32z                        )
  allocate(d%y32%x32z%y21,source='12')
  allocate(d%y32%x32z%y11,source='12')
  allocate(d%y32%x32z%y01,source='12')
  end select
  allocate(a,source=d)
  k=0
  select type(a)
    type is(x3)
      k=1
      a%x01='34'
      a%x11='34'
      a%x12%x12z%y01='34'
      a%x21='34'
      a%x22%x22z%y01='34'
      a%x22%x22z%y11='34'
      a%x31='34'
      a%y32%x32y='34'
      a%y32%x32z%y21='34'
      a%y32%x32z%y11='34'
      a%y32%x32z%y01='34'
  end select
  if (k/=1) print *,2892
  k=0
  select type(d)
    type is(x3)
      k=1
      if (d%x01/='12') print *,3001
      if (d%x11/='12') print *,3002
      if (d%x12%x12z%y01/='12') print *,3012
      if (d%x21/='12') print *,3003
      if (d%x22%x22z%y01/='12') print *,3013
      if (d%x22%x22z%y11/='12') print *,3023
      if (d%x31/='12') print *,3004
      if (d%y32%x32z%y21/='12') print *,3005
      if (d%y32%x32z%y11/='12') print *,3006
      if (d%y32%x32z%y01/='12') print *,3007
  end select
  if (k/=1) print *,2992
end
end
use m4
  call ss
  print *,'sngg665t : pass'
 end
  
