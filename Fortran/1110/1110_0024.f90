module m0
  interface
     subroutine temp()
     end subroutine 
  end interface
end
module m1
  use m0
  implicit none
  private
  interface temp_gen
      subroutine temp2()
      end subroutine temp2
  end interface temp_gen
  procedure(interface_sub), pointer :: proc_pr 
  interface
     subroutine interface_sub()
     end subroutine interface_sub
  end interface
  interface gen
     procedure proc_pr
  end interface gen
  public :: gen ! comment out this will prevent crash
  public :: temp_gen,proc_pr
end module m1
module m2
  interface
     subroutine foo()
       use m1 
     end subroutine foo
  end interface
end module m2

use m2
call foo
rewind 11
read(11,*) n
if (n/=1) print *,1001

print *,'sngg683o : pass'
end
     subroutine foo()
       use m1 
  interface
     subroutine sub()
     end subroutine 
  end interface
       proc_pr=>sub
       call gen()
     end subroutine foo
     subroutine sub()
      write(11,*) 1
     end subroutine
