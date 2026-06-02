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
!  interface temp_gen
!      subroutine temp2()
!      end subroutine temp2
!  end interface temp_gen
  procedure(sub) :: proc_pr 
  interface
     subroutine sub()
     end subroutine 
  end interface
  interface gen
     procedure proc_pr
  end interface gen
  public :: gen ! comment out this will prevent crash
  !public :: temp_gen
end module m1
module m2
  interface
     subroutine foo(d)
       use m1 
  interface
     subroutine interface_sub2(k)
     end subroutine 
  end interface
  procedure(interface_sub2):: d 
  interface gen
     procedure d
  end interface gen
     end subroutine foo
  end interface
end module m2

use m2
  interface
     subroutine sub2(k)
     end subroutine 
  end interface
  procedure(sub2):: a 
call foo(a)
rewind 3
read(3,*) n
if (n/=1) print *,1001
read(3,*) n
if (n/=2) print *,1002

print *,'sngg701o : pass'
end
     subroutine foo(d)
       use m1 
  interface
     subroutine interface_sub2(k)
     end subroutine 
  end interface
  procedure(interface_sub2) :: d 
  interface gen
     procedure d
  end interface gen
  interface
     !subroutine sub()
     !end subroutine 
     subroutine a   (k)
     end subroutine 
  end interface
       !!!proc_pr=>sub
       !!!!d     =>sub2
       call gen()
       call gen(2)
     end subroutine foo
     subroutine sub2(k)
     entry      a   (k)
      write(3,*) k
     end subroutine
     subroutine proc_pr()
      write(3,*) 1
     end subroutine
