module m1
  use iso_fortran_env 
  private
    integer(int32) :: c
  interface
     module subroutine sub1()
     end subroutine
  end interface
public::ss,sub1
contains
 subroutine ss
   c=10
!print '(z16.16)',loc(c)
 end subroutine
end module m1

submodule (m1) m1sub
    integer(4) :: b
contains
  module subroutine sub1()
    integer(4) :: a
if( c/=10) then
print *,10001,c
print '(z16.16)',loc(c)
endif
  end subroutine sub1
end submodule m1sub

use m1
call ss
call sub1
print *,'sngg062o : pass'
end
