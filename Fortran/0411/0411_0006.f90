module m2
 common /x/ lhf
contains
 subroutine init
 implicit none
write(3,*) 3, lhf,loc(lhf)
end subroutine
end

use m2,only: init
call init
print *,'pass'
end
