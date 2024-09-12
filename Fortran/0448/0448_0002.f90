module t
 procedure(),pointer :: p
end 

module tt
use t
end 

use tt,only:p
use t
implicit none
if (1/=2) goto 1
call p
1 print *,'pass'
end
