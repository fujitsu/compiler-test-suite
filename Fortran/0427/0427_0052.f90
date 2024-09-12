module mo1
integer :: ii=10
external mmm !$pragma c (mmm)
contains
subroutine mmma()
end subroutine
end
module m02
use mo1
private 
end
module m03
use mo1
private 
end

use m02
use m03
External mmm !$pragma c (mmm)
print *,'pass'
END
