type x1
  integer::z0
end type
type,extends(x1)::x12
  integer::z2
end type
type y
  integer::y0
end type
type,extends(y):: yy
  class(x1),allocatable::y1
end type
class(y ),allocatable::a1(:)
type w
class(yy ),allocatable::a2(:),a3(:)
end type
type(w)::q
allocate(q%a2(1),q%a3(1))
q%a2(1)%y0=11
q%a3(1)%y0=13
allocate(q%a2(1)%y1,source=x12(1,2))
allocate(q%a3(1)%y1,source=x12(3,4) )
allocate(a1,source=[((q%a2,m=1,1),q%a3,n=1,1)] )
k=0
select type (a1)
  type is(yy)
   k=1
   if (a1(1)%y0   /=11) print *,3001
   if (a1(2)%y0   /=13) print *,3011
   if (a1(1)%y1%z0/=1) print *,2001
   if (a1(2)%y1%z0/=3) print *,2003
end select
if (k/=1) print *,2002
k=0
select type (a1)
  type is(yy)
    select type (a=>a1(1)%y1)
    type is(x12)
     k=1
     if (a%z0/=1) print *,2011
     if (a%z2/=2) print *,2012
end select
end select
if (k/=1) print *,2012
k=0
select type (a1)
  type is(yy)
select type (a=>a1(2)%y1)
  type is(x12)
   k=1
   if (a%z0/=3) print *,2021
   if (a%z2/=4) print *,2014
end select
end select
if (k/=1) print *,2022

print *,'pass'
end