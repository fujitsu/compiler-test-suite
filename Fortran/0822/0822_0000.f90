module m1
  type y
   integer::x1
  end type
  type,extends( y )::x
    integer::  n(2)
    integer,pointer    :: p(:)
    integer,allocatable:: a(:)
  end type
  type(x)::n(2)
  type(x),pointer    ::p(:)
  type(x),allocatable::a(:)
  class(y),pointer    ::py(:)
  class(y),allocatable::ay(:)
  class(x),pointer    ::px(:)
  class(x),allocatable::ax(:)
contains
subroutine s1(dy,dx)
  class(y)::dy(2)
  class(x)::dx(2)
  n(1)%n(1)=1
  n(1)%p(1)=1
  n(1)%a(1)=1
  p(1)%n(1)=1
  p(1)%p(1)=1   
  p(1)%a(1)=1
  a(1)%n(1)=1  
  a(1)%p(1)=1
  a(1)%a(1)=1
  px(1)%n(1)=1
  px(1)%p(1)=1
  px(1)%a(1)=1
  ax(1)%n(1)=1
  ax(1)%p(1)=1
  ax(1)%a(1)=1
  dx(1)%n(1)=1
  dx(1)%p(1)=1
  dx(1)%a(1)=1
k=0
select type (py)
 type is(x)
  py(1)%n(1)=1
  py(1)%p(1)=1
  py(1)%a(1)=1
  k=1
end select
if (k/=1) print *,1011
k=0
select type (ay)
 type is(x)
  ay(1)%n(1)=1  
  ay(1)%p(1)=1
  ay(1)%a(1)=1
  k=1
end select
if (k/=1) print *,1012
k=0
select type (dy)
 type is(x)
  dy(1)%n(1)=1
  dy(1)%p(1)=1
  dy(1)%a(1)=1
  k=1
end select
if (k/=1) print *,1012
  if(n(1)%n(1)/=1) print *,20001
  if(n(1)%p(1)/=1) print *,20001
  if(n(1)%a(1)/=1) print *,20001
  if(p(1)%n(1)/=1) print *,20001
  if(p(1)%p(1)/=1) print *,20001
  if(p(1)%a(1)/=1) print *,20001
  if(a(1)%n(1)/=1) print *,20001
  if(a(1)%p(1)/=1) print *,20001
  if(a(1)%a(1)/=1) print *,20001
  if(px(1)%n(1)/=1) print *,20001
  if(px(1)%p(1)/=1) print *,20001
  if(px(1)%a(1)/=1) print *,20001
  if(ax(1)%n(1)/=1) print *,20001
  if(ax(1)%p(1)/=1) print *,20001
  if(ax(1)%a(1)/=1) print *,20001
  if(dx(1)%n(1)/=1) print *,20001
  if(dx(1)%p(1)/=1) print *,20001
  if(dx(1)%a(1)/=1) print *,20001
k=0
select type (py)
 type is(x)
  if(py(1)%n(1)/=1) print *,20001
  if(py(1)%p(1)/=1) print *,20001
  if(py(1)%a(1)/=1) print *,20001
  k=1
end select
if (k/=1) print *,1011
k=0
select type (ay)
 type is(x)
  if(ay(1)%n(1)/=1) print *,20001
  if(ay(1)%p(1)/=1) print *,20001
  if(ay(1)%a(1)/=1) print *,20001
  k=1
end select
if (k/=1) print *,1012
k=0
select type (dy)
 type is(x)
  if(dy(1)%n(1)/=1) print *,20001
  if(dy(1)%p(1)/=1) print *,20001
  if(dy(1)%a(1)/=1) print *,20001
  k=1
end select
if (k/=1) print *,1012
end subroutine
end
use m1
class(y),allocatable::dy(:)
class(x),allocatable::dx(:)
allocate(p(2),a(2),px(2),ax(2),dx(2))
allocate(x::py(2))
allocate(x::ay(2))
allocate(x::dy(2))
do k=1,2
allocate(n(k)%a(2))
allocate(n(k)%p(2))
allocate(a(k)%a(2))
allocate(a(k)%p(2))
allocate(p(k)%a(2))
allocate(p(k)%p(2))
allocate(ax(k)%a(2))
allocate(ax(k)%p(2))
allocate(px(k)%a(2))
allocate(px(k)%p(2))
allocate(dx(k)%p(2))
allocate(dx(k)%a(2))
allocate(dx(k)%p(2))
kk=0
select type (py)
 type is(x)
  kk=1
  allocate(py(k)%a(2))
  allocate(py(k)%p(2))
end select
if (kk/=1) print *,1001
kk=0
select type (ay)
 type is(x)
  kk=1
  allocate(ay(k)%a(2))
  allocate(ay(k)%p(2))
end select
if (kk/=1) print *,1002
kk=0
select type (dy)
 type is(x)
  kk=1
  allocate(dy(k)%a(2))
  allocate(dy(k)%p(2))
end select
if (kk/=1) print *,1002
end do
call s1(dy,dx)
print *,'pass'
end
