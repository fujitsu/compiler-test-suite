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
!       interface gen
!          procedure d
!       end interface gen
     end subroutine foo
  end interface
end module m2

use m2
print *,'sngg715o : pass'
end
