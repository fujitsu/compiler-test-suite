module m1
  common /cmn/ a
end module

subroutine sub
  common /cmn/ i
  bind(c) /cmn/
  i = 2
end

use m1
common /cmn/ i
bind(c) /cmn/
i = 1
call sub
if (i/=2) print *,1
print *,'pass'
end 
