module m0
  interface
     subroutine t
     end subroutine 
  end interface
end
module m1
  use m0
  implicit none
  private
  procedure(s) :: p 
  interface g
     subroutine d()
     end subroutine 
  end interface
  interface
     subroutine s(k)
       integer::k
     end subroutine 
  end interface
  interface gen
     procedure p
  end interface gen
  public :: gen ,g
end module m1
module m2
  interface
     subroutine e()
       use m1  
     end subroutine e
  end interface
end module m2

use m2
call e()
print *,'sngg820o : pass'
end
     subroutine e()
       use m1  
       call p(2)
       call gen(2)
     end subroutine e
     subroutine p(k)
       integer::k
       if (k/=2) print *,1001
     end subroutine 
