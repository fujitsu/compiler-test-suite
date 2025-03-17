module m1
contains
subroutine foo(p)
real,pointer::p(:)
p=1.0
end subroutine 
end
use m1
real,pointer::p(:)
allocate(p(2))
call foo(p)
if (abs(p(2)-1)>0.0001)write(6,*) "NG"
print *,'pass'
end

