module m0
  integer::k
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
 end interface
 interface
 module subroutine ss1(i,ii,iii)
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
   call ss1(1,3,2)
   call x
 end 
  module subroutine ss1(i,ii,iii)
   k=k+i
  end
  module subroutine x
   k=k+1
  end
end

use m0
k=1
call s
call ss1(1,2,3)
print *,'pass'
end
