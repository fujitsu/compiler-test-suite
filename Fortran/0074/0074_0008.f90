module m1 
 implicit none
 integer :: lhf
end


 subroutine r_setup
  use m1
 implicit none
if (lhf/=2) print *,101,lhf
end subroutine

module m2
 use m1
 implicit none
contains
 subroutine init
 implicit none
lhf = 2
write(1,*) 3, lhf,loc(lhf)
  call r_setup
end subroutine
end

use m2,only: init
call init
print *,'pass'
end

