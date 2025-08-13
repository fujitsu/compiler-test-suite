module m2
private
public::init
 common /x/ lhf
contains
 subroutine init
 implicit none
lhf = 2
write(15,*) 3, lhf,loc(lhf)
  call s1
end subroutine
end

 subroutine s1
 common /x/ lhf
if (lhf/=2) print *,101,lhf
end subroutine

use m2
call init
print *,'pass'
end

