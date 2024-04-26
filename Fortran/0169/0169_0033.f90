module m1
 logical :: m1called=.false.
 interface
  module subroutine sub1
  end subroutine
 end interface
end

module m2
 logical :: m2called=.false.
 interface
  module subroutine sub2
  end subroutine
 end interface
end

submodule(m1)smod
 interface
  module subroutine sub
  end subroutine
 end interface
contains
 module subroutine sub1
  call sub
 end subroutine
 module subroutine sub
  m1called = .true.
 end subroutine
end

submodule(m2)smod
 interface
  module subroutine sub
  end subroutine
 end interface
contains
 module subroutine sub2
  call sub
 end subroutine
 module subroutine sub
  m2called = .true.
 end subroutine
end

use m1
use m2
call sub1
if (.not. m1called .or. m2called) print *,101
m1called = .false.
call sub2
if (.not. m2called .or. m1called) print *,102
print *,'pass'
end
