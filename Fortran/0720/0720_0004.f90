module m1
interface
 subroutine sub(i)
  integer i
 end subroutine
 subroutine subx(i)
   integer i
 end subroutine
end interface
contains
 subroutine foo(i)
  procedure(subx),pointer:: i
  i=>subx
 end subroutine
end

use m1
procedure (sub), pointer :: p

call foo(p)
call p(k)
if (k/=1)print *,'fail'

print *,'pass'

end

subroutine sub(i)
 integer i
print *,'error'
entry      subx(i)
 i=1
end subroutine

