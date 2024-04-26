module m
  integer :: i
  interface
    module subroutine sub1
    end subroutine
    module subroutine sub2
    end subroutine
  end interface
end

submodule(m)smoD
  interface
    module subroutine sub3
    end subroutine
    module subroutine sub4
    end subroutine
  end interface
contains
  module subroutine sub1
    i=1
  end subroutine
  module subroutine sub3
    call sub4
    if (i/=4) print *,'sub4:err'
    i=3
  end subroutine
end

submodule(m:smoD)ssmod
contains
  module subroutine sub2
    call sub3
    if (i/=3) print *,'sub3:err'
    i=2
  end subroutine
  module subroutine sub4
    call sub5
    if (i/=5) print *,'sub5:err'
    i=4
  end subroutine
  subroutine sub5
    i=5
  end subroutine
end

use m
call sub1
if (i/=1) print *,'sub1:err'
call sub2
if (i/=2) print *,'sub2:err'
print *,'pass'
end
