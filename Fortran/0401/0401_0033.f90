module m1
  common /cmn/ a
end module

subroutine sub
  bind(c) /cmn/
  common /cmn/ i
  i = 2
end

use m1
bind(c) /cmn/
common /cmn/ i
i = 1
call sub
if (i/=2) print *,1
print *,'pass'
end 
