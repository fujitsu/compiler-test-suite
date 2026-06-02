module m
  logical flag
  protected a
  interface
    subroutine sub2(x)
      procedure(),pointer :: x
    end subroutine
  end interface
  procedure(sub2),pointer :: a
contains
  subroutine sub
    a=>null()
    call sub2(a)
  end subroutine
end 

use m
call sub
print *,'pass'
end

subroutine sub2(x)
  use m
  procedure(),pointer :: x
  if(associated(x,null())) flag = .true.
end subroutine
