type x
  integer::x1
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
type y
  class(x),allocatable::y1
end type
type (x),allocatable::a
class (x),allocatable::b
type(y),allocatable::f(:),g(:)  
allocate(a) ! nomsg
allocate(b)  ! nomsg

allocate(f(2),source=[y(a),y(a)]) ! msg
allocate(g(2)) ! nomsg

print *,'sngg526k : pass'
end

