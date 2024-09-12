module mo1
type tt
 integer :: ii
end type
type (tt) ::str
integer :: ii
private :: str
end
module m02
use mo1
private 
end

use m02
print *,'pass'
end
