module mod01
implicit none
public::bit_size
integer, parameter :: BII8P = bit_size(1     )  
endmodule mod01

module mod02
implicit none
public :: bit_size

interface bit_size
  module procedure bit_size_chr
endinterface

contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   endfunction bit_size_chr
endmodule mod02

use mod02
use mod01

  if(      bit_size(1  )/=32) print *,1010
  if(      bit_size('1')/=ichar('1')) print *,1011
print *,'pass'
end
