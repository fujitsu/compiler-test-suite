module mod01
integer, parameter :: p = bit_size(1)
endmodule mod01

module mod02
interface bit_size
  module procedure bit_size_chr
endinterface
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   endfunction bit_size_chr
endmodule mod02

subroutine foo
use mod02
use mod01

   n=      bit_size(1)

end
call foo
print *,'pass'
end
