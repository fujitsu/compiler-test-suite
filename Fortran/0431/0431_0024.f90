Module m1
interface
subroutine sub
end subroutine
end interface

integer :: n=0

contains
subroutine ss
procedure (sub):: foo
procedure (sub),pointer:: p
p=>foo
call s1(p  )
end subroutine

subroutine s1(p)
procedure (sub),pointer,intent(in):: p
call p
end subroutine
end

use m1
call ss
if (n/=1) print *,101
print *,'pass'
end

subroutine foo
use m1
n=n+1
end subroutine
