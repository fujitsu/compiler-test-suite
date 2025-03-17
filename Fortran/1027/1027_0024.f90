module m
   interface flag
  function fag()
  end function
   end interface

          type flag
            integer::x
          end type
contains
subroutine s1
          type(flag) :: n=flag(1)
          if (n%x/=1) print *,101
          if (fag()/=1.0) print *,102
end
end
use m
call s1
          print *,"pass"
          End
  function fag()
   fag=1.0
  end function
