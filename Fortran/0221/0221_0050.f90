module mod01
implicit none
integer, parameter :: p = bit_size(1)
end
module mod02
use mod01
implicit none
interface bit_size
  module procedure bit_size_chr
end interface
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer             :: bits  
   end function
endmodule mod02
subroutine sub
use mod02,only:bit_size
use mod01,only:bit_size
   n= bit_size(1)
if (n/=32) print *,1010

end
call sub
print *,'pass'
end
