module m0
  integer::k
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
 subroutine ss1(i,ii)
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
   call ss1(1,2)
   call x
 end 
  module subroutine x
   k=k+1
  end
end

use m0
k=1
call s
if (k/=2) print *,101
call ss1(1,2)
print *,'pass'
end
 subroutine ss1(i,ii)
 end 
