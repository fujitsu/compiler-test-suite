module m0
  integer::k
 interface
 module subroutine s()
 end 
 module subroutine x()
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
   call ss1
   call x
 end 
  subroutine ss1
   k=k+1
  end
  module subroutine x
   k=k+1
  end
end
use m0
k=0
call s
if (k/=2) print *,101
print *,'OK'
end
