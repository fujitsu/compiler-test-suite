type x1
  integer::z0
end type
type,extends(x1)::x12
  integer::z2
end type
type y
  class(x1),allocatable::y1
end type
class(y ),allocatable::a1(:),a2,a3
allocate(a2,a3)
allocate(a2%y1,source=x12(1,2))
allocate(a3%y1,source=x12(3,4) )
allocate(a1,source=[a2,a3] )
k=0
select type (a1)
  type is(y)
   k=1
   if (a1(1)%y1%z0/=1) print *,2001
   if (a1(2)%y1%z0/=3) print *,2003
end select
if (k/=1) print *,2002
k=0
select type (a=>a1(1)%y1)
  type is(x12)
   k=1
   if (a%z0/=1) print *,2011
   if (a%z2/=2) print *,2012
end select
if (k/=1) print *,2012
k=0
select type (a=>a1(2)%y1)
  type is(x12)
   k=1
   if (a%z0/=3) print *,2021
   if (a%z2/=4) print *,2014
end select
if (k/=1) print *,2022

print *,'pass'
end
