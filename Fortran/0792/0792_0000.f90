module m0
 interface
 module subroutine s()
 end 
 end interface
end

submodule (m0) ss
contains
 module subroutine s()
 end 
end
use m0
call s
print *,'pass'
end
