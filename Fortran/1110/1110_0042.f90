 module m1
  implicit none
  interface
     subroutine temp()
     end subroutine 
  end interface
  !!!private
!  interface temp_gen
!      subroutine temp2()
!      end subroutine temp2
!  end interface temp_gen
  procedure(interface_sub), pointer :: proc_pr 
  interface
     subroutine interface_sub()
     end subroutine interface_sub
  end interface
  interface gen
     procedure proc_pr
  end interface gen
  public :: gen ! comment out this will prevent crash
  !!!public :: temp_gen
end module m1
module m2
  interface
     subroutine foo(d)
       use m1 
  interface
     subroutine interface_sub2(k)
     end subroutine 
  end interface
  procedure(interface_sub2), pointer :: d 
  interface gen
     procedure d
  end interface gen
     end subroutine foo
  end interface
end module m2

use m2
  interface
     subroutine interface_sub2(k)
     end subroutine 
  end interface
  procedure(interface_sub2), pointer :: a 
call foo(a)
rewind 1
read(1,*) n
if (n/=1) print *,1001
read(1,*) n
if (n/=2) print *,1002

print *,'sngg705o : pass'
end
     subroutine foo(d)
       use m1 
  interface
     subroutine interface_sub2(k)
     end subroutine 
  end interface
  procedure(interface_sub2), pointer :: d 
  interface gen
     procedure d
  end interface gen
  interface
     subroutine sub()
     end subroutine 
     subroutine sub2(k)
     end subroutine 
  end interface
       proc_pr=>sub
       d     =>sub2
       call gen()
       call gen(2)
     end subroutine foo
     subroutine sub2(k)
      write(1,*) k
     end subroutine
     subroutine sub()
      write(1,*) 1
     end subroutine
