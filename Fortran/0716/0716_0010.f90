module m
integer::a
private::a
contains
subroutine s()
a=1
end subroutine
end module
use m
call s()
end
