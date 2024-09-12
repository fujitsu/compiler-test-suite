type x
  integer:: x1=1
end type
type,extends(x):: y
  class(x),allocatable:: y1
end type
type(y):: a
a=f()
if (allocated(a%y1)) print *,101
print *,'pass'
contains
impure function f() result(r)
type(y):: r
end function
end
