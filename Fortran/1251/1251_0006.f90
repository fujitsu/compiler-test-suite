module m0
  interface
     subroutine sub0()
     end subroutine
  end interface
  procedure(sub0), pointer,public :: z
private
end
module m1
  use m0
  implicit none
  private
  procedure(z), pointer :: subPtr
  interface subWpr
     procedure subPtr
  end interface subWpr
  public :: subWpr ,y
contains
  subroutine y
  interface
     subroutine sub0()
     end subroutine
  end interface
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
rewind 4
read(4,*) n
if (n/=101) print *,1001
print *,'sngg493p : pass'
end
     subroutine sub2()
       use m1
       call y
       call subWpr
     end subroutine sub2
     subroutine sub0()
      write(4,*) 101
     end subroutine
