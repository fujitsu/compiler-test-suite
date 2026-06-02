module m1
  type x0
     character(:),allocatable::x01(:)
  end type
  type y0
     character(:),allocatable::y01(:)
  end type
end
module m2
  use m1
  type yy0
     character(:),allocatable::x12y(:)
     type(y0),allocatable::x12z(:)
  end type
  type,extends( x0 ):: x1
     character(:),allocatable::x11(:)
     type(yy0)::x12(3)
  end type
  type,extends( y0 ):: y1
     character(:),allocatable::y11(:)
  end type
end
module m3
  use m2
  type yy1
     character(:),allocatable::x22y(:)
     type(y1),allocatable::x22z(:)
  end type
  type,extends( x1 ):: x2
     character(:),allocatable::x21(:)
     type(yy1)::x22(3)
  end type
  type,extends( y1 ):: y2
     character(:),allocatable::y21(:)
  end type
end
module m4
  use m3
  type yy2
     character(:),allocatable::x32y(:)
     type(y2),allocatable::x32z(:)
  end type
  type,extends(x2):: x3
     character(:),allocatable::x31(:)
     type(yy2):: y32(3)
  end type
  contains
  subroutine ss
  type(x3)::v(3)
  call s1(v )
  end
  subroutine s1(d)
  class(x0),intent(out)::d(:)
  class(x0),allocatable::a(:)
do n=1,size(d)
  allocate(d(n)%x01(3),source='12')
  select type(d)
    type is(x3)
  allocate(d(n)%x11(3),source='12')
do n1=1,3     
  allocate(d(n)%x12(n1)%x12y(3),source='12')
  allocate(d(n)%x12(n1)%x12z(3))
do n2=1,3     
  allocate(d(n)%x12(n1)%x12z(n2)%y01(3),source='12')
end do
end do
  allocate(d(n)%x21(3),source='12')
do n1=1,3     
  allocate(d(n)%x22(n1)%x22y(3),source='12')
  allocate(d(n)%x22(n1)%x22z(3))
do n2=1,3     
  allocate(d(n)%x22(n1)%x22z(n2)%y01(3),source='12')
  allocate(d(n)%x22(n1)%x22z(n2)%y11(3),source='12')
end do
end do
  allocate(d(n)%x31(3),source='12')
do n1=1,3     
  allocate(d(n)%y32(n1)%x32y(3),source='12'            )
  allocate(d(n)%y32(n1)%x32z(3)                        )
do n2=1,3     
  allocate(d(n)%y32(n1)%x32z(n2)%y21(3),source='12')
  allocate(d(n)%y32(n1)%x32z(n2)%y11(3),source='12')
  allocate(d(n)%y32(n1)%x32z(n2)%y01(3),source='12')
end do
end do
  end select
end do
  allocate(a,source=d)
do n=1,size(a)
  k=0
  select type(a)
    type is(x3)
      k=1
      a(n)%x01='34'
      a(n)%x11='34'
do n2=1,3
do n1=1,3
      a(n)%x12(n1)%x12z(n2)%y01='34'
end do
end do
      a(n)%x21='34'
do n2=1,3
do n1=1,3
      a(n)%x22(n1)%x22z(n2)%y01='34'
      a(n)%x22(n1)%x22z(n2)%y11='34'
end do
end do
      a(n)%x31='34'
do n2=1,3
do n1=1,3
      a(n)%y32(n1)%x32y='34'
      a(n)%y32(n1)%x32z(n2)%y21='34'
      a(n)%y32(n1)%x32z(n2)%y11='34'
      a(n)%y32(n1)%x32z(n2)%y01='34'
end do
end do
  end select
  if (k/=1) print *,2892
end do
do n=1,size(d)
  k=0
  select type(d)
    type is(x3)
      k=1
do n1=1,3
      if (d(n)%x01(n1)/='12') print *,3001
      if (d(n)%x11(n1)/='12') print *,3002
do n2=1,3
      if (any(d(n)%x12(n1)%x12z(n2)%y01/='12')) print *,3012
end do
      if (d(n)%x21(n1)/='12') print *,3003
do n2=1,3
      if (any(d(n)%x22(n1)%x22z(n2)%y01/='12')) print *,3013
      if (any(d(n)%x22(n1)%x22z(n2)%y11/='12')) print *,3023
end do
      if (d(n)%x31(n1)/='12') print *,3004
do n2=1,3
      if (any(d(n)%y32(n1)%x32z(n2)%y21/='12')) print *,3005
      if (any(d(n)%y32(n1)%x32z(n2)%y11/='12')) print *,3006
      if (any(d(n)%y32(n1)%x32z(n2)%y01/='12')) print *,3007
end do
end do
  end select
  if (k/=1) print *,2992
end do
end
end
use m4
  call ss
  print *,'sngg666t : pass'
 end
  
