module m0
          type flag
            integer::x
          end type
contains
  function f()
   f=1.0
  end function
end

module m1
use m0,x=>flag
end
module m2
use m1
end
module m3
use m2

contains
subroutine s1

          type(x) :: n=x(1)
          if (n%x/=1) print *,101
          if (f()/=1.0) print *,102
end
end
use m3
call s1
          print *,"pass"
          End
