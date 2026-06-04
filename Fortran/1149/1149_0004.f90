module m1
  private
    integer(4) :: c
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
    integer(4) :: b
contains
  module subroutine sub1()
    integer(4) :: a
print *,c
  end subroutine sub1
end submodule m1sub

print *,'sngg059o : pass'
end
