module m1
  use iso_fortran_env
  private
    integer(int32) :: c
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
    integer(int32) :: b
contains
  module subroutine sub1()
    integer(int32) :: a
print *,c
  end subroutine sub1
end submodule m1sub

print *,'sngg058o : pass'
end
