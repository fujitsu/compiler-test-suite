module m0
          type flag
            integer::x
          end type
contains
  function f()
          type(flag) :: n=flag(1)
          if (n%x/=1) print *,111
   f=1.0
  end function
end

module m1
use m0
end
module m2
use m1
end
module m3
use m2

contains
subroutine s1

          if (f()/=1.0) print *,102
end
end
use m3
call s1
          print *,"pass"
          End
