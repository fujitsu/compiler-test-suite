module m
contains
 subroutine sub1
  call ssub
 contains
  subroutine ssub
   call sub2
  end subroutine
 end subroutine
 subroutine sub2
  print *,'pass'
 end subroutine
end

use m
call sub1
end
