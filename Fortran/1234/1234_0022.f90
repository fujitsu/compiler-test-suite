module m1
  type x0
     character(:),allocatable::x01
  end type
  type y0
     character(:),allocatable::y01
  end type
  type,extends( y0 ):: y1
     character(:),allocatable::y11
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
     type(y0),allocatable::x13
     class(y0),allocatable::x14
     character(2)::x15='56'
  end type
  contains
  subroutine ss
  type(x1)::v
  call s1(v )
  end
  subroutine s1(d)
  class(x0),intent(out)::d
  class(x0),allocatable::a
     class(y0),allocatable::tmp
  allocate(d%x01,source='12')
  select type(d)
    type is(x1)
  allocate(d%x11,source='12')
  allocate(d%x12%x12y,source='12')
  allocate(d%x12%x12z)
  allocate(d%x12%x12z%y01,source='12')
  allocate(d%x13)
  allocate(d%x13%y01,source='12')
   if (.not.same_type_as(d%x14,tmp)) print *,8722
   if (d%x15/='56') print *,8723
  allocate(y1::d%x14)
  select type(p=>d%x14)
    type is(y1)
     allocate(p%y01,source='12')
     allocate(p%y11,source='12')
  end select
  end select

  allocate(a,source=d)
  k=0
  select type(a)
    type is(x1)
      k=1
      a%x01='34'
      a%x11='34'
      a%x12%x12y='34'
      a%x12%x12z%y01='34'
      a%x13%y01='34'
  select type(p=>a%x14)
    type is(y1)
     p%y01='34'
     p%y11='34'
  end select
  end select
  if (k/=1) print *,2892
  k=0
  select type(d)
    type is(x1)
      k=1
      if (d%x01/='12') print *,3001
      if (d%x11/='12') print *,3002
      if (d%x12%x12y/='12') print *,3012
      if (d%x12%x12z%y01/='12') print *,3112
      if (d%x13%y01 /='12') print *,3212
  select type(p=>d%x14)
    type is(y1)
     if (p%y01/='12') print *,29292
     if (p%y11/='12') print *,29293
  end select
  end select
  if (k/=1) print *,2992
end
end
use m2
  call ss
  print *,'sngg667t : pass'
 end
  
