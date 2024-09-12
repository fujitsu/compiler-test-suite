module m$d
contains
    subroutine s$b1()
    end subroutine
end module

module m2$d
use m$d
contains
   subroutine s$b2()
  end subroutine
end

use m2$d
call s$b1()
call s$b2()
print *,'pass'
end
