module m1
contains
subroutine ss( x)
real,intent(in):: x
pointer:: x
x=1
end subroutine
end
use m1
pointer:: x
allocate(x)
call ss(x)
if (x/=1) print *,201
print *,'pass'
end
