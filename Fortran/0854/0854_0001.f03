type x
  integer::x1
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
type y
  class(x),allocatable::y1
end type
type(y),allocatable::g,h
allocate(g,h)
g%y1=x(1)
h%y1=xx(11,2)
if (g%y1%x1/=1) print *,90021
if (h%y1%x1/=11) print *,90031
k=0
select type (z=>g%y1)
 type is (x)
   k=1
end select
if (k/=1) print *,8001
k=0
select type (z=>h%y1)
 type is (xx)
   k=1
end select
if (k/=1) print *,8002
print *,'pass'
end
