module t
 integer :: p
end 

module tt
use t
end 

use tt,only:p
use t
implicit none
 p=1
print *,'pass'
end
