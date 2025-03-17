module m
          type flag
            integer::x=2
          end type
          type(flag) :: n=flag(1)
end
use m
          if (n%x/=1) print *,101
          n=  flag()
          if (n%x/=2) print *,102
          print *,"pass"
          End
