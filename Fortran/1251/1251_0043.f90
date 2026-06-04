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
  public :: subPtr ,y
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
rewind 43
read(43,*) n
if (n/=101) print *,1001
print *,'sngg530p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subPtr
     end subroutine sub2
!     subroutine sub1()
!      write(43,*) 101
!     end subroutine
     subroutine sub0()
      write(43,*) 101
     end subroutine
