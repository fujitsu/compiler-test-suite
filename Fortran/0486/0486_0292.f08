Module op
real, private :: a=0
contains
subroutine foo
if (a/=0) print *,103
end subroutine
end module
program main
use op
call foo
print *,'pass'
end
