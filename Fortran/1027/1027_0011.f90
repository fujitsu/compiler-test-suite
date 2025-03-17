module m0
          type flag
            integer::x=2
          end type
end
module m1
use m0
          type flagx
            integer::x=2
          end type
end
module m2
use m1
contains
subroutine s1
end
end
module m3
use m2
contains
subroutine s2
          type(flag) :: n=flag(1)
          if (n%x/=1) print *,101
          n=  flag()
          if (n%x/=2) print *,102
end
end
use m3
call s2
          print *,"pass"
          End
