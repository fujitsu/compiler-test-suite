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
  procedure(sub1) :: subPtr
  interface
     subroutine sub1()
     end subroutine
  end interface
  interface subWpr
     procedure subPtr
  end interface subWpr
  public :: subWpr ,y
contains
  subroutine y
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
rewind 30
read(30,*) n
if (n/=101) print *,1001
print *,'sngg517p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subWpr
     end subroutine sub2
     subroutine subPtr()
      write(30,*) 101
     end subroutine
