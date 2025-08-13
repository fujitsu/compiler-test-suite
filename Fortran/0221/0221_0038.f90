module x01
    integer,parameter::p01=1
    integer,parameter::k01=bit_size(p01)
end
module x02
use x01
interface bit_size
  module procedure b
end interface
contains
  function b(n) result(r)
    integer::r
    logical,intent(in)::n
    r=0
    if (n)r=1
  end function
end
module x03
use x01
use x02
contains
subroutine s1
write(2,*)bit_size(1)
write(2,*)bit_size(.false.)
end subroutine
end
use x03
call s1
rewind 2
read(2,*) k
if (k/=32) print *,200
read(2,*) k
if (k/=0 ) print *,2001
print *,'pass'
end
