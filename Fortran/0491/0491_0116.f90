module m0
  integer::k
 interface
 module subroutine ss1(i)
  integer :: i(k)
 end
 end interface
end
use m0
print *,'pass'
end
