module m1
contains
subroutine s1(prc)
procedure():: prc
call prc
end subroutine
end
use m1
interface 
 subroutine sub
 end subroutine
end interface
procedure (sub),pointer:: p
p=> sub
call s1(p)
print *,'pass'
end
 subroutine sub
 end subroutine
