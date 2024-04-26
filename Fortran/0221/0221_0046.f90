module mod01
implicit none
public
integer, parameter :: BII8P = bit_size(1     )  
endmodule mod01

module mod02
use mod01
implicit none
public :: bit_size

interface bit_size
  module procedure bit_size_i
endinterface

contains
  function bit_size_i(i) result(bits)
   integer     , intent(IN) :: i 
   integer(4)             :: bits  
    bits=i
   endfunction 
endmodule mod02

use mod01
use mod02

   n=      bit_size(1  )
if (n/=1) print *,1001
print *,'pass'
end
