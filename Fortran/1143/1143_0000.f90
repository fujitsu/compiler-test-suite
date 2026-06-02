module m1
  use iso_fortran_env
  private
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
contains
  module subroutine sub1()
    integer(int32) :: a
  end subroutine sub1
end submodule m1sub

print *,'sngg011n : pass'
end
