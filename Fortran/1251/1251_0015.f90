module m0
  procedure(modsub), pointer :: subPtr
  interface subWpr
     procedure subPtr
  end interface subWpr
 contains
  subroutine modsub()
      write(15,*) 101
  end subroutine
end
module m1
  use m0
  implicit none
  private
  public :: subWpr ,y
contains
  subroutine y
    subPtr=>modsub
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
rewind 15
read(15,*) n
if (n/=101) print *,1001
print *,'sngg502p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subWpr
     end subroutine sub2
!     subroutine sub1()
!      write(15,*) 101
!     end subroutine
!     subroutine sub0()
!      write(15,*) 101
!     end subroutine
