module m
contains
  function flagx(a)
   flagx=a
  end
end
use m
   interface flag
     module procedure  flagx
   end interface

          type flag
             integer:: x
          end type
          type(flag) :: n
   if (flag(1.)/=1.) print *,101
   n=flag(1)
   if (n%x/=1) print *,102
          print *,"pass"
          End
