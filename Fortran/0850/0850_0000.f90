module mod02
implicit none
private
public :: bit_size,sin,cos
public :: sin_chr,cos_chr
intrinsic::sin,cos,bit_size
interface bit_size
  module procedure bit_size_chr
endinterface
interface sin
  module procedure sin_chr
endinterface
interface cos
  module procedure cos_chr
endinterface
contains
  function bit_size_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   endfunction bit_size_chr
  function sin_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   end function 
  function cos_chr(i) result(bits)
   character(*), intent(IN) :: i 
   integer(4)             :: bits  
   bits=ichar(i)
   end function
end
module mod01
use mod02
implicit none
procedure(sin_chr),pointer::p  
procedure(cos_chr),pointer::pp
end

use mod02
use mod01
p=>sin_chr
pp=>cos_chr
if (bit_size(1)/=32) print *,1010
if (bit_size('1')/=ichar('1')) print *,1010
if (abs(sin(0.1)-9.98334214E-02)>0.01) print *,801
if (sin('1')/=ichar('1')) print *,802
if (abs(cos(0.1)-0.995004177)>0.01) print *,701
if (cos('1')/=ichar('1')) print *,702
print *,'pass'
end
