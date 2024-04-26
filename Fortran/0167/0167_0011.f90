module m
  integer(4) :: a1(2),a2(2)
  equivalence(a1(2),a2(1)) 
  private a1
contains
  subroutine sub
    if (loc(a2) - loc(a1) /= 4) print *,loc(a1),loc(a2)
  end subroutine
end

use m
call sub
print *,'pass'
end
