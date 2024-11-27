module m1
contains
function f2()
dimension n(2)
character (len=n(2)) ::f2
integer n
parameter(n=2)
 call m2s
f2='1'
contains 
subroutine m2s
 if (len(f2)/=2)write(6,*) "NG"
end subroutine
end function
end
use m1
 if (len(f2())/=2)write(6,*) "NG"
 print *,'pass'
end

