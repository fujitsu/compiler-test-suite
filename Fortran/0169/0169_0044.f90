module m
contains
 recursive subroutine sub(i)
  if (i /=3) call sub(i+1)
 end subroutine
end

use m
call sub(1)
print *,'pass'
end
