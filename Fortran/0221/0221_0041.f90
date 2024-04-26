module mod01
implicit none
integer, parameter :: p = bit_size(1) 
end
module mod02
use mod01
implicit none
public :: bit_size
interface bit_size
  module procedure bit_size_chr
end interface
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer             :: bits  
   end function
endmodule mod02

use mod02
use mod01

   n=      bit_size(1  )
print *,'pass'
end
