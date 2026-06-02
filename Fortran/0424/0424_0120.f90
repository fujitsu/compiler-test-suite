module mod
integer,external,pointer::a
end module

use mod

interface
  integer function ext()
  end function
end interface

a=>ext
call sub
print *,'pass'
end

subroutine sub
use mod
  if (a() /= 10) print *,1
end

integer function ext()
  ext=10
end
