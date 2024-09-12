type x
  integer,pointer::x2(:)
  integer        ::x3(2)
  integer,allocatable::x4(:)
end type
type y
  type(x),pointer::y1
  integer,pointer::y2(:)
  integer        ::y3(2)
  integer,allocatable::y4(:)
end type
type z
  type(y),pointer::z1
  integer,pointer::z2(:)
  integer        ::z3(2)
  integer,allocatable::z4(:)
end type
type(z),pointer::v
allocate(v)
allocate(v%z1)
allocate(v%z2(2))
allocate(v%z4(2))
allocate(v%z1%y1)
allocate(v%z1%y2(2))
allocate(v%z1%y4(2))
allocate(v%z1%y1%x2(2))
allocate(v%z1%y1%x4(2))

v%z2(1)=1
v%z3(1)=1
v%z4(1)=1
v%z1%y2(1)=1
v%z1%y3(1)=1
v%z1%y4(1)=1
v%z1%y1%x2(1)=1
v%z1%y1%x3(1)=1
v%z1%y1%x4(1)=1
if (v%z2(1)/=1) print *,10001
if (v%z3(1)/=1) print *,10001
if (v%z4(1)/=1) print *,10001
if (v%z1%y2(1)/=1) print *,10001
if (v%z1%y3(1)/=1) print *,10001
if (v%z1%y4(1)/=1) print *,10001
if (v%z1%y1%x2(1)/=1) print *,10001
if (v%z1%y1%x3(1)/=1) print *,10001
if (v%z1%y1%x4(1)/=1) print *,10001
print *,'pass'
end


