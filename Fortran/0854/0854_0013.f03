type x1
  integer::z0
end type
type,extends(x1)::x12
  integer::z2
end type
type y
  class(x1),allocatable::y1
end type
type(y),allocatable::a3(:),a4(:)
allocate(a3(2))
allocate(a3(2)%y1,source=x12(1,3))
allocate(a4(1))
a4=[a3(2)]

k=0
select type (a=>a4(1)%y1)
  type is(x12)
   if ((a%z0/=1)) print *,1011
   if ((a%z2/=3)) print *,1002
   k=1
end select
if(k/=1) print *,2001

print *,'pass'
end
