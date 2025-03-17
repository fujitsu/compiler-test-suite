module m0
          type flag
            integer::x=2
          end type
end
module m1
use m0
          type(flag) :: n=flag(1)
end
use m1
          if (n%x/=1) print *,101
          n=  flag()
          if (n%x/=2) print *,102
          print *,"pass"
          End
