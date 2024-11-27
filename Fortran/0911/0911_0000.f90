module m1
 interface gen
   procedure :: s1,s2
 end interface
contains
subroutine s1(f)
external::f
print*,"Resolved with external"
end subroutine
subroutine s2(dmy)
procedure(integer) :: dmy
end subroutine

function fun(d1) 
integer :: fun(2)
integer :: d1
fun=d1+1
end function

function fun2(d1) 
integer :: fun2(2)
integer :: d1
fun2=d1+2
end function

subroutine s()
procedure(fun2),pointer :: pr
pr=>fun2
call gen(pr)
print *,'pass'
end subroutine
end

use m1
call s()
end
