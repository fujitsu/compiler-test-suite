module m1
interface bbb
end interface
interface 
subroutine sub() bind(c)
end subroutine sub
end interface
end module m1
module m2
interface zzz
end interface
end module m2
use m2
use m1
print *,'sngtp10:pass'
end
