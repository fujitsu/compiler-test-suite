module m
contains
 subroutine sub(i)
  if (i < 3) call sub2(i+1)
 end subroutine
 subroutine sub2(i) 
  call sub(i)
 end subroutine
end

use m
call sub(1)
print *,'pass'
end
