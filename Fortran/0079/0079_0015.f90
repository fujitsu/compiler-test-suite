module m0
  integer::k
 interface
 module subroutine s()
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
   call ss1
  contains
  subroutine ss1
   k=k+1
  end
 end 
end
use m0
k=0
call s
if (k/=1) print *,101
print *,'pass'
end
