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
  interface subWpr
     procedure subPtr
  end interface subWpr
  public :: subWpr ,y
contains
  subroutine y
    subPtr=>sub1
  end subroutine
end module m1

use m1
       character(1),pointer::p
allocate(p,source='1')
call sub2(p)
rewind 26
read(26,*) n
if (n/=101) print *,1001
print *,'sngg513p : pass'
contains
     subroutine sub2(p)
       use m1
       character(*),pointer::p
       call y
       call subWpr
       if (p/='1') print *,5001
     end subroutine sub2
end
     subroutine sub1()
      write(26,*) 101
     end subroutine
