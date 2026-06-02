module m1
  use iso_fortran_env,only:int32
  private
    integer(int32) :: c
  interface
     module subroutine sub1()
     end subroutine
  end interface
public::sub1
end module m1

submodule (m1) m1sub
contains
  module subroutine sub1()
c=1
  end subroutine sub1
end submodule m1sub

use m1
call sub1
print *,'sngg063o : pass'
end
