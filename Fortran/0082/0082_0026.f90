module m0
  integer::k=2
private
public:: ss1
 interface
 module subroutine ss1(i)
  character(k) :: i
 end
 end interface
end
use m0
  character(2) :: i
call ss1(i)
print *,'pass'
end
submodule(m0) smod
 contains
 module subroutine ss1(i)
  character(k) :: i
  if (len(i)/=2) print *,301
 end
 end

