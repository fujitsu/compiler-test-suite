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
class(x1),allocatable::a1,a2,a3,a4(:)
allocate(a1,source=x1(1))
allocate(a2,source=x11(1,2))
allocate(a3,source=x12(1,3))
allocate(a4(3),source=[a3,a2,a1])
k=0
select type (a=>a4)
  type is(x1)
   if (any(a%z0/=1)) print *,1001
   k=1
end select
if(k/=1) print *,2001

print *,'pass'
end
