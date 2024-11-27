type x1
  integer::z0
end type
type,extends(x1)::x11
  integer::z1
end type
type,extends(x1)::x12
  integer::z2
end type
type y
  class(x1),allocatable::y1
end type
class(y),allocatable::a1,a2,a3,a4(:)
allocate(a1,a2,a3)
allocate(a1%y1,source=x1(1))
allocate(a2%y1,source=x11(1,2))
allocate(a3%y1,source=x12(1,3))
allocate(a4(3),source=[a3,a2,a1])
k=0
select type (a=>a4)
  type is(y)
   if (   (a(1)%y1%z0/=1)) print *,1001
   if (   (a(2)%y1%z0/=1)) print *,1002
   if (   (a(3)%y1%z0/=1)) print *,1003
   k=1
end select
if(k/=1) print *,2001

k=0
select type (a=>a4(1)%y1)
  type is(x12)
   if ((a%z0/=1)) print *,1001
   if ((a%z2/=3)) print *,1002
   k=1
end select
if(k/=1) print *,2001

k=0
select type (a=>a4(2)%y1)
  type is(x11)
   if ((a%z0/=1)) print *,1011
   if ((a%z1/=2)) print *,1012
   k=1
end select
if(k/=1) print *,2002

k=0
select type (a=>a4(3)%y1)
  type is(x1)
   if ((a%z0/=1)) print *,1021
   k=1
end select
if(k/=1) print *,2003

print *,'pass'
end
