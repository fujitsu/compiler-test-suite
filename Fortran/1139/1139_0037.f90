type x
  integer::x1
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
type y
  class(*),allocatable::y1
end type
type (x),allocatable::a,d
class (x),allocatable::b,c,e
type(y),allocatable::f(:),g,h,j,k,m  
type (xx),allocatable::i  
allocate(c,source=x(1)) ! nomsg
allocate(a,b,source=c)  ! msg

allocate(d,e,source=a)  ! nomsg
allocate(f(2),source=y(d)) ! msg
allocate(h,source=y(i)) ! msg
allocate(j,source=y(c)) ! msg
allocate(m,source=j) ! msg 
allocate(k,source=l()) ! msg
allocate(g,source=f(2))  ! msg

print *,'sngg525k : pass'
contains
function l() result(r)
type(y),allocatable::r
allocate(r,source=y(c))
end function
end

