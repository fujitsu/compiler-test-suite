module m0
integer,parameter::n=4
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
  real(kind=n) :: b
contains
  subroutine sub2()
    real(kind=n) :: a
  end subroutine sub2
  module subroutine sub1()
    call sub2
  end subroutine sub1
end 

use m1
call sub1
print *,'sngg123n : pass'
end
