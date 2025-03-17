module m
contains
  function fg()
   fg=1.0
  end function
end
module m1
use m
   interface flag
     procedure  fg
   end interface

          type flag
            integer::x
          end type
contains
subroutine s1
          type(flag) :: n=flag(1)
          if (n%x/=1) print *,101
          if (flag()/=1.0) print *,102
end
end
use m1
call s1
          print *,"pass"
          End
