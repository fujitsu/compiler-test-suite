module m0
  integer::k=2
 interface
 module subroutine ss1(c)
  character(k+2) :: c 
 end
 end interface
end
use m0
  character(2+2) :: c 
call              ss1(c)
print *,'pass'
end
submodule(m0) smod
 contains
 module subroutine ss1(c)
  character(k+2) :: c 
  if (len (c)/=4 ) print *,201
 end
 end
