Module m1
contains 
subroutine s
print*,"pass"
end subroutine
end module

use m1
procedure(s),pointer ::  ptr=>s
call ptr
end 
