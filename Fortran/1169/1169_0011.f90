module m1
  type :: t1
  contains
    procedure :: proc1, proc2
  end type t1
 
  interface
    module subroutine proc1(self)
      class(t1), intent(inout) :: self
    end subroutine proc1
  end interface
  interface
    module subroutine proc2(self)
      class(t1), intent(inout) :: self
    end subroutine proc2
  end interface
end module m1

submodule (m1) sm1
contains
  module procedure proc1
  end procedure proc1
end submodule sm1

submodule (m1:sm1) sm2
contains
  module procedure proc2
    call proc1(self)
  end procedure proc2
end submodule sm2

use m1
print *,'sngg196n : pass'
end
