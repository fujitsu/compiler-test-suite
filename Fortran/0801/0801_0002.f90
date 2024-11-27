module m1

intrinsic :: sin
procedure(sin),pointer :: test

end

module m2
use m1 
end 

use m2,only:test
use m1 

print *,'pass'
end 
