module mo1
integer :: ii=10
common /com/ ia
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
print *,'pass'
end
