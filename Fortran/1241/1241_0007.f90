module m1
interface aaa
end interface
end module m1
module m2
use m1
interface 
subroutine sub() bind(c)
end subroutine sub
end interface
end module m2
use m2
print *,'sngtp08:pass'
end
