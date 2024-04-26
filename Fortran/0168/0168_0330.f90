module m1
  interface 
    subroutine sub
    end subroutine
  end interface
contains
 subroutine s1
  interface 
    subroutine sub
    end subroutine
  end interface
 end subroutine
end
use m1
call sub
print *,'pass'
end
    subroutine sub
    end subroutine
