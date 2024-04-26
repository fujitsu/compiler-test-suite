module mod02
implicit none
public :: bit_size
integer, parameter :: BII8P = bit_size(1     )  

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

   n=      bit_size(1  )
if (n/=32) print *,1010
print *,'pass'
end
