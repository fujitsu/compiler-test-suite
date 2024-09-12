module m1
contains
subroutine s1(prc)
procedure():: prc
call prc
end subroutine
end
subroutine ss(sub)
use m1
interface 
 subroutine sub
 end subroutine
end interface
call s1(sub)
end
interface 
 subroutine sub
 end subroutine
end interface
call ss(sub)
print *,'pass'
end
 subroutine sub
 end subroutine
