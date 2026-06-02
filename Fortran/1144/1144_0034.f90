module m0                
integer,parameter::n=8
end
module m1
  use m0
  private
  public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) submod
  real(kind=n) :: a
contains
  module subroutine sub1()
    real(kind=n) :: b
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg124n : pass'
end
