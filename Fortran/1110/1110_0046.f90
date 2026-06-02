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
  interface
     subroutine temp3()
     end subroutine 
  end interface
  procedure(interface_sub), pointer :: proc_pr 
  interface
     subroutine interface_sub()
     end subroutine interface_sub
  end interface
  interface gen
     procedure proc_pr
  end interface gen
  public :: gen ! comment out this will prevent crash
  !!public :: temp_gen
  public :: proc_pr
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
rewind 4
read(4,*) n
if (n/=1) print *,1001
read(4,*) n
if (n/=2) print *,1002

print *,'sngg709o : pass'
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
      write(4,*) k
     end subroutine
     subroutine sub()
      write(4,*) 1
     end subroutine
