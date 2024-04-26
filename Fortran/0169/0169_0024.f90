module m
contains
 subroutine sub1
  call sub2
 end subroutine
 subroutine sub2
  call sub3
 end subroutine
 subroutine sub3
  print *,'pass'
 end subroutine
end

use m
call sub1
end
