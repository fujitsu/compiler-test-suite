module mod02
implicit none
private
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
end
module mod01
use mod02
implicit none
private
public bit_size,p
integer, parameter :: p = bit_size(1     )  
end

use mod02,only:bit_size
use mod01,only:bit_size,p
   n=      bit_size(1  )
if (n/=32) print *,1010
if (p/=32) print *,1010
if (bit_size('1')/=ichar('1')) print *,1010
print *,'pass'
end
