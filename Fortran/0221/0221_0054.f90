module mod01
implicit none
private
public::bit_size
integer, parameter :: BII8P = bit_size(1     )  
endmodule mod01

module mod02
use mod01
implicit none
public :: bit_size
private
interface bit_size
  module procedure bit_size_chr
endinterface
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   endfunction bit_size_chr
endmodule mod02

use mod02
use mod01
write(1,*)      bit_size(1  )
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) k
if (k/=32)print *,1010
end
