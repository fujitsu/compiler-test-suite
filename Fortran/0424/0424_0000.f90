module m
  logical flag
  protected a
  procedure(),pointer :: a
contains
  subroutine sub
    a=>sub2
    call a
  end subroutine
  subroutine sub2
    flag = .true.
  end subroutine
end 

use m
call sub
print *,'pass'
end
