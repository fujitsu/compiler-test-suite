module m1
  type y
   integer::x1
  end type
  type,extends( y )::x
    integer::  n(2)
    integer,pointer    :: p(:)
    integer,allocatable:: a(:)
  end type
 type z
  type(x)::n(2)
  type(x),pointer    ::p(:)
  type(x),allocatable::a(:)
  class(y),pointer    ::py(:)
  class(y),allocatable::ay(:)
  class(x),pointer    ::px(:)
  class(x),allocatable::ax(:)
 end type
 type q
  type(z)::nz(2)
  type(z),pointer    ::n(:)
  type(z),allocatable::a(:)
  class(z),pointer    ::px(:)
  class(z),allocatable::ax(:)
 end type
  type(q)::nz(2)
  type(q),pointer    ::n(:)
  type(q),allocatable::a(:)
  class(q),pointer    ::px(:)
  class(q),allocatable::ax(:)
contains
subroutine s1(d)
  class(z)::d(2)
k=0
select type (w=>n(1)%n(1)%ay)
 type is(x)
  k=1
 type is(y)
print *,0,'type is y'
end select
if (k/=1) print *,8012
  n(1)%n(1)%n(1)%n(1)=1
  n(1)%n(1)%n(1)%p(1)=1
  n(1)%n(1)%n(1)%a(1)=1
  n(1)%n(1)%p(1)%n(1)=1  
  n(1)%n(1)%p(1)%p(1)=1   
  n(1)%n(1)%p(1)%a(1)=1  
  n(1)%n(1)%a(1)%n(1)=1  
  n(1)%n(1)%a(1)%p(1)=1
  n(1)%n(1)%a(1)%a(1)=1
  n(1)%n(1)%px(1)%n(1)=1 
  n(1)%n(1)%px(1)%p(1)=1 
  n(1)%n(1)%px(1)%a(1)=1 
  n(1)%n(1)%ax(1)%n(1)=1
  n(1)%n(1)%ax(1)%p(1)=1 
  n(1)%n(1)%ax(1)%a(1)=1 
k=0
select type (w=>n(1)%n(1)%py)
 type is(x)
  w(1)%n(1)=1 
  w(1)%p(1)=1 
  w(1)%a(1)=1 
  k=1
end select
if (k/=1) print *,1011
k=0
select type (w=>n(1)%n(1)%ay)
 type is(x)
  w(1)%n(1)=1  
  w(1)%p(1)=1  
  w(1)%a(1)=1  
  k=1
 type is(y)
print *,'type is y'
end select
if (k/=1) print *,1012
  if(n(1)%n(1)%n(1)%n(1)/=1) print *,20001
  if(n(1)%n(1)%n(1)%p(1)/=1) print *,20001
  if(n(1)%n(1)%n(1)%a(1)/=1) print *,20001
  if(n(1)%n(1)%p(1)%n(1)/=1) print *,20001
  if(n(1)%n(1)%p(1)%p(1)/=1) print *,20001
  if(n(1)%n(1)%p(1)%a(1)/=1) print *,20001
  if(n(1)%n(1)%a(1)%n(1)/=1) print *,20001
  if(n(1)%n(1)%a(1)%p(1)/=1) print *,20001
  if(n(1)%n(1)%a(1)%a(1)/=1) print *,20001
  if(n(1)%n(1)%px(1)%n(1)/=1) print *,20001
  if(n(1)%n(1)%px(1)%p(1)/=1) print *,20001
  if(n(1)%n(1)%px(1)%a(1)/=1) print *,20001
  if(n(1)%n(1)%ax(1)%n(1)/=1) print *,20001
  if(n(1)%n(1)%ax(1)%p(1)/=1) print *,20001
  if(n(1)%n(1)%ax(1)%a(1)/=1) print *,20001
k=0
select type (w=>n(1)%n(1)%py)
 type is(x)
  if(w(1)%n(1)/=1) print *,20001
  if(w(1)%p(1)/=1) print *,20001
  if(w(1)%a(1)/=1) print *,20001
  k=1
end select
if (k/=1) print *,1011
k=0
select type (w=>n(1)%n(1)%ay)
 type is(x)
  if(w(1)%n(1)/=1) print *,20001
  if(w(1)%p(1)/=1) print *,20001
  if(w(1)%a(1)/=1) print *,20001
  k=1
end select
if (k/=1) print *,1012
end subroutine
end
use m1
class(z),allocatable::d(:)
integer::r,s
allocate(n(2))
do s=1,2
allocate(n(s)%n(2))
do r=1,2
allocate(n(s)%n(r)%p(2),n(s)%n(r)%a(2),n(s)%n(r)%px(2),n(s)%n(r)%ax(2))
allocate(x::n(s)%n(r)%py(2))
allocate(x::n(s)%n(r)%ay(2))
do k=1,2
allocate(n(s)%n(r)%n(k)%a(2))
allocate(n(s)%n(r)%n(k)%p(2))
allocate(n(s)%n(r)%a(k)%a(2))
allocate(n(s)%n(r)%a(k)%p(2))
allocate(n(s)%n(r)%p(k)%a(2))
allocate(n(s)%n(r)%p(k)%p(2))
allocate(n(s)%n(r)%ax(k)%a(2))
allocate(n(s)%n(r)%ax(k)%p(2))
allocate(n(s)%n(r)%px(k)%a(2))
allocate(n(s)%n(r)%px(k)%p(2))
kk=0
select type (w=>n(s)%n(r)%py)
 type is(x)
  kk=1
  allocate(w(k)%a(2))
  allocate(w(k)%p(2))
end select
if (kk/=1) print *,1001
kk=0
select type (w=>n(s)%n(r)%ay)
 type is(x)
  kk=1
  allocate(w(k)%a(2))
  allocate(w(k)%p(2))
end select
if (kk/=1) print *,1002
end do
end do
end do
k=0
select type (w=>n(1)%n(1)%ay)
 type is(x)
  k=1
 type is(y)
print *,'type is y'
end select
if (k/=1) print *,9012
call s1(d)
print *,'pass'
end
