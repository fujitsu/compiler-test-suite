module m0
  integer::k=2
!!!private
public:: ss1
 interface
 module subroutine ss1(i)
  integer :: i(k)
 end
 end interface
end
use m0
  integer :: i(2)
call ss1(i)
print *,'pass'
end
submodule(m0) smod
 contains
 module subroutine ss1(i)
  integer :: i(k)
  if (size(i)/=2 ) print *,201
 end
 end

