module m1
interface g
      procedure  ::s  
end interface
contains
 subroutine s
 end subroutine
end
use m1
call g
print *,'pass'
end
