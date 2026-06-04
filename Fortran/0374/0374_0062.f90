module m
interface
 subroutine sub() bind(c)
 end subroutine
end interface
end module

subroutine sub() bind(c)
use m
end

use m
print *,'pass'
end
