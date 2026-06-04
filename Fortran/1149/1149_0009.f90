module m1
  use iso_fortran_env    
  private
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
  interface
     module subroutine sub2()
     end subroutine
  end interface
    integer(int32) :: aa
contains
  module subroutine sub1()
    integer(int32) :: a
if (int32/=4)print *,109
if (kind(a)/=4)print *,109
  call sub2
  end subroutine sub1
end submodule m1sub
submodule (m1:m1sub) m2sub
    integer(int32) :: aaa
contains
  module subroutine sub2()
    integer(int32) :: b
if (int32/=4)print *,109
if (kind(b)/=4)print *,109
  end subroutine 
end submodule


use m1
call sub1

print *,'sngg067o : pass'
end
