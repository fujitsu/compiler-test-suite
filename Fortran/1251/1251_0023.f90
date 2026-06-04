module m0
  procedure(modsub), pointer :: z => modsub
  procedure(z), pointer,public :: subPtr
!private
  public::z
 contains
  subroutine modsub()
      write(23,*) 101
  end subroutine
end
module m1
  use m0
  implicit none
!  private
  interface subWpr
     procedure subPtr
  end interface subWpr
  public :: subWpr ,y
contains
  subroutine y
    subPtr=>z
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
rewind 23
read(23,*) n
if (n/=101) print *,1001
print *,'sngg510p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subWpr
     end subroutine sub2
!     subroutine sub1()
!      write(23,*) 101
!     end subroutine
!     subroutine sub0()
!      write(23,*) 101
!     end subroutine
