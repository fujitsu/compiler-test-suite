module m
   interface fla
  function fla()
  end function
   end interface
end
module m1
use m

          type flag
            integer::x
          end type
          type(flag) :: n=flag(1)
contains
subroutine s1
          if (n%x/=1) print *,101
          if (fla()/=1.0) print *,102
end
end
use m1
call s1
          print *,"pass"
          End
  function fla()
   fla=1.0
  end function
