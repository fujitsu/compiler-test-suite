module m0
  integer::k=2
private
public:: ss1
 interface
 module subroutine ss1(c)
  character(k) :: c 
 end
 end interface
end
use m0
  character(2) :: c 
call              ss1(c)
print *,'pass'
end
submodule(m0) smod
 contains
 module subroutine ss1(c)
  character(k) :: c 
  if (len (c)/=2 ) print *,201
 end
 end
