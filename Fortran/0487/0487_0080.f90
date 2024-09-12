module m1
integer,target:: k=1
contains
subroutine s(  n )
integer,intent(out):: n
n=2
end subroutine
function pfun()
integer,pointer:: pfun
pfun=> k
end function
end
use m1
integer:: n
call s( pfun() )
print *,'pass'
end
