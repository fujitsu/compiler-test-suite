module m1
  implicit none
  interface
     subroutine sub0()
     end subroutine
  end interface
  procedure(sub0), pointer :: subPtr
  interface subWpr
     procedure subPtr
  end interface subWpr
  private
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
rewind 13
read(13,*) n
if (n/=101) print *,1001
print *,'sngg500p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subWpr
     end subroutine sub2
!     subroutine sub1()
!      write(13,*) 101
!     end subroutine
     subroutine sub0()
      write(13,*) 101
     end subroutine
