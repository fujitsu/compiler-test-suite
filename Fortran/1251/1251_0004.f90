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
  procedure(sub0), pointer :: subPtr
!  interface
!     subroutine sub1()
!     end subroutine
!  end interface
  interface subWpr
     procedure subPtr
  end interface subWpr
  public :: subWpr ,y
contains
  subroutine y
    subPtr=>sub0
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
rewind 2
read(2,*) n
if (n/=101) print *,1001
print *,'sngg491p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subWpr
     end subroutine sub2
!     subroutine sub1()
!      write(2,*) 101
!     end subroutine
     subroutine sub0()
      write(2,*) 101
     end subroutine
