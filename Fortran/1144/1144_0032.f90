module m0
integer,parameter::n=4
end
module m1
  use m0
  private
    real(kind=n) :: c
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
    real(kind=n) :: b
contains
  module subroutine sub1()
    real(kind=n) :: a
  end subroutine sub1
end submodule m1sub

print *,'sngg122n : pass'
end
