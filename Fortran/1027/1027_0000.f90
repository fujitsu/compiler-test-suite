module m0
          type flag
            integer::x
          end type
   interface flag
  function f()
  end function
   end interface
          type(flag) :: n=flag(1)
contains
 subroutine s1
          if (n%x/=1) print *,101
          if (flag()/=1.0) print *,102
          End
end
use m0
call s1
          print *,"pass"
end
  function f()
   f=1.0
  end function
