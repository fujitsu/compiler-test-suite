module t
   type x
      integer::a
   end type
end
use t
type(x) ::v(3)
v=f()
if (any(v%a/=(/1,2,3/)))print *,'error'
print *,'pass'
contains
function f() result(r)
type(x),allocatable::r(:)
allocate(r(3))
r%a=(/1,2,3/)
end function
end
