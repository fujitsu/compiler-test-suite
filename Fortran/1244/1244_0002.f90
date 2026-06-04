module m1
private
contains
subroutine sub() bind(c)
interface aaa
procedure ::sub1
end interface
contains
subroutine sub1()
end subroutine sub1
end subroutine sub
end module m1
use m1
print *,'sngtin03:pass'
end
