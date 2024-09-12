module mo1
integer :: ii
end
module m02
use mo1
private 
end
module m03
use mo1
private :: ii
end

use m02
use m03
print *,'pass'
end
