module m0
  integer::k
private
 interface
 module subroutine ss1(i)
  integer :: i(k)
 end
 end interface
end
use m0
print *,'pass'
end
