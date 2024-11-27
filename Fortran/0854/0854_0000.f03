type x
  integer::x1
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
type y
  class(x),allocatable::y1
end type
class (x),allocatable::b,c(:),d
type(y),allocatable::f(:),g,h
b=x(1)
d=xx(11,2)

f=[y(x(1)),y(x(1))]

if (b%x1/=1) print *,90001
if (d%x1/=11) print *,90011
k=0
select type (b   )
 type is (x)
   k=1
end select
if (k/=1) print *,7001
k=0
select type (d)
 type is (xx)
   k=1
end select
if (k/=1) print *,7002
if (f(2)%y1%x1/=1) print *,90002

allocate(c(2))

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
