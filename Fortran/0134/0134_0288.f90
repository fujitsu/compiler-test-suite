module mod
type :: t
      procedure(f),pointer,nopass  :: g
end type t
interface
   integer(kind=8) function f(k)
   end function f
end interface
end 

   integer(kind=8) function f(k)
      f= k
   end function f

use mod
type(t) :: c
c%g=>f
if (c%g(1)/=1)print *,'error'
print *,'pass'
end




