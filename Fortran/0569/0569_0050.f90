module m1
type ty
integer, allocatable :: x
end type ty

type(ty)::obj
contains
 pure function fun1(obj)
 integer :: fun1
 type(ty),value::obj
 obj%x=55
 fun1=obj%x
end function fun1
end module

use m1
allocate(obj%x)
obj%x=5

if(obj%x.ne.5) print*,101
if(obj%x.ne.5) print*,102
if(fun1(obj).ne.55) print*,103
print*,"Pass"
end

