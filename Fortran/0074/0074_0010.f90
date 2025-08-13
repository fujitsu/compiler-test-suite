module m1 
 implicit none
 integer :: lhf
end


 subroutine s1
 implicit none
  call s11
contains
subroutine s11
  use m1
if (lhf/=2) print *,101,lhf
end subroutine
end subroutine

module m2
 use m1
 implicit none
contains
 subroutine init
 implicit none
lhf = 2
write(13,*) 3, lhf,loc(lhf)
  call s1
end subroutine
end

use m2,only: init
call init
print *,'pass'
end

