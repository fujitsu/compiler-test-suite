module m
contains
  function f()
  end
end
use m
   interface flag
     module procedure  f
   end interface

          type flag
              integer::x
          end type
          type(flag) :: n
          n=flag(1)
          if (n%x/=1) print *,101
          print *,"pass"
          End
