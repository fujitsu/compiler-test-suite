module m1
type z
integer z
end type
logical x
type(z),allocatable,dimension(:)::g
end
subroutine s1
use m1
g(1)%z = 4
call s2
x=g(1)%z/=14
end subroutine
subroutine s2
use m1
g(1)%z = g(1)%z + 10
end subroutine
use m1
allocate(g(1))
call s1
if(x) print *,"error"
print *,"PASS"
end

