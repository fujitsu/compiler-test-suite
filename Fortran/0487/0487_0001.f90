type y
type(x),pointer::p
end type
type x
  integer::xx=1
end type
type(y):: v
allocate( v%p )
if (v%p%xx /=1) print *,101
print *,'pass'
end
