Module op
real, private :: a=0
contains
subroutine foo
if (a/=0) print *,103
end subroutine
end module
program main
use op
integer:: a=2
call foo
if( a/=2 ) print *,201
print *,'pass'
end
