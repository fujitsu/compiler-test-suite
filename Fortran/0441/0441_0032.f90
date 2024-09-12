module m1
interface
 function n1()
 end function
end interface
contains
subroutine s1(n)
procedure(n1)::n
if (n()/=1) print *,101
end subroutine
end
use m1
call s1(n1 )
print *,'pass'
end

 function n1()
 n1=1
 end function
