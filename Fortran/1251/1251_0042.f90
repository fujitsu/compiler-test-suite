module m0
  interface
     subroutine sub0()
     end subroutine
  end interface
end
module m1
  use m0
  implicit none
  private
  procedure(sub1), pointer :: subPtr
  interface
     subroutine sub1()
     end subroutine
  end interface
!  interface subWpr
!     procedure subPtr
!  end interface subWpr
  public :: subPtr ,y
contains
  subroutine y
    subPtr=>sub1
  end subroutine
end module m1
module m2
  interface
     subroutine sub2()
       use m1
     end subroutine sub2
  end interface
end module m2

use m2
call sub2
rewind 42
read(42,*) n
if (n/=101) print *,1001
print *,'sngg529p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subPtr
     end subroutine sub2
     subroutine sub1()
      write(42,*) 101
     end subroutine
