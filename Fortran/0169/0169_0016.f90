module m
  interface
    module recursive subroutine sub(a)
      integer::a
    end subroutine
  end interface
contains
  module recursive subroutine sub(a)
    integer::a
    if (a<10) then
      call sub(a+1)
    else
      print *,'pass'
    end if
  end subroutine
end

use m
call sub(1)
end
