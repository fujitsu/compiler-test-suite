module m1
interface
 function n1()
 end function
end interface

contains
subroutine s1(k)
external :: k
if (k()/=1) print *,101
end subroutine
subroutine s2(k)
external :: k
pointer::k
if (associated(k)) then
  if (k()/=1) print *,201
endif
end subroutine
end
use m1
procedure(n1),pointer::tt2
tt2=>n1
call s1(n1 )
call s1(tt2 )
call s2(tt2 )
call s2(null() )
print *,'pass'
end

function n1()
n1=1
end
