module mo1
integer :: ii
integer :: jj
integer :: kk
end
module m02
use mo1
private 
end
module m03
use mo1
private 
end
module m04
use mo1,only:ii
end
module m04a
use mo1,only:kk
use mo1,only:ii
use mo1,only:ii,bb=>jj
private 
end
module m04b
use mo1,only:vv=>jj
end
module m04x
use mo1
end
module m05
use m04x
use m04
use m04a
use m04b
end

use m05
use m04b
vv=1
print *,'pass'
end