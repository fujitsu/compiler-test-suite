module m1
  use iso_fortran_env
  private
    integer(int32) :: c
  interface
     module subroutine sub1()
     end subroutine
  end interface
public::sub1
end module m1

submodule (m1) m1sub
    integer(int32) :: b
contains
  module procedure  sub1
    integer(int32) :: a
a=1
c=a
if (c/=1) print *,901
  end 
end submodule m1sub

use m1
call sub1
print *,'sngg410o : pass'
end
