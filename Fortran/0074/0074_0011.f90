module m2
 common /x/ lhf
contains
 subroutine init
 implicit none
lhf = 2
write(1,*) 3, lhf,loc(lhf)
  call s1
end subroutine
end

 subroutine s1
 common /x/ lhf
if (lhf/=2) print *,101,lhf
end subroutine

use m2,only: init
call init
print *,'pass'
end

