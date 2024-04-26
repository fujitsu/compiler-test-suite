module mod01
implicit none
intrinsic :: sin 
end
module mod02
use mod01
implicit none
interface sin
  module procedure sinr
end interface
public :: sin
contains
  function sinr(i) result(bits)
   character(*), intent(IN) :: i 
   integer             :: bits  
   bits=ichar(i)
   end function
endmodule mod02

use mod02
use mod01
   a=      sin(0.1)
if (abs(a-9.98334214E-02)>0.1) print *,2001
   n=      sin('a')
if (n/=ichar('a')) print *,2002
print *,'pass'
end
