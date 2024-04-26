module m0
  integer::k=0
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
 end interface
 interface
 module subroutine ss1(ia,ii)
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
   call ss1(1,3)
   call x
 end 
  module subroutine ss1(ia,ii)
i=1
   k=k+i
  end
  module subroutine x
   k=k+1
  end
end

use m0
k=1
call s
call ss1(1,2)
print *,'pass'
end
