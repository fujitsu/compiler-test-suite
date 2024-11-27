module m1

interface 
 function f()
 end function
end interface
procedure(f),pointer :: test

end

module m2
use m1,only:test
end 

use m2,only:test
use m1 

print *,'pass'
end 
