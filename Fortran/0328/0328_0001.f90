module m
contains
subroutine sub(a,b,c)
 integer :: a,b,c
 a=b
 b=c
end subroutine
end

use m
integer :: a,b
a=1
b=2
call sub(a,b,b)
write(1,*) a
print *,'pass'
end
