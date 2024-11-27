type x
  integer::x1
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
type y
  class(x),allocatable::y1
end type
type (x),allocatable::a,d
class (x),allocatable::b,c,e
type(y),allocatable::f(:),g,h,j,k,m  
type (xx),allocatable::i  
c=x(1)
allocate(a,b,source=c)

allocate(f(2))
e=a
f(2)=y(d)
h=y(i)
j=y(c)
m=j
k=l()
g=f(2)

print *,'pass'
contains
function l() result(r)
type(y),allocatable::r
allocate(r,source=y(c))
end function
end
