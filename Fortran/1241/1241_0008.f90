module m1
interface aaa
!subroutine ss
!end subroutine ss
end interface
end module m1
module m2
use m1
interface aaa
end interface
end module m2
module m3
use m1
use m2
interface 
subroutine sub() bind(c)
end subroutine sub
end interface
end module m3
use m2
print *,'sngtp09:pass'
end
