module mo1
interface assignment(=)
subroutine ifun(i,j)
intent(inout) :: i
intent(in) :: j
character :: j
endsubroutine 
end interface
integer :: aaa
end
subroutine ifun(i,j)
intent(inout) :: i
intent(in) :: j
character :: j
print *,j
print *,i
endsubroutine 
module m02
use mo1
private :: ifun
end
module m03
use mo1,only:aaa
use mo1
private ::aaa
end

use m02
use m03
print *,'pass'
end
