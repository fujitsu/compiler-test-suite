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
    procedure(),pointer :: p
    p => sub4
    call p
    if (i/=4) print *,'sub4:err'
    if (.not. associated(p,sub4)) print *,'sub4:err2'
    i=3
  end subroutine
end

submodule(m:smoD)ssmod
contains
  module subroutine sub2
    procedure(),pointer :: p
    p=>sub3
    call p
    if (i/=3) print *,'sub3:err'
    if (.not. associated(p,sub3)) print *,'sub3:err2'
    i=2
  end subroutine
  module subroutine sub4
    procedure(),pointer :: p
    p=>sub5
    call p
    if (i/=5) print *,'sub5:err'
    if (.not. associated(p,sub5)) print *,'sub5:err2'
    i=4
  end subroutine
  subroutine sub5
    i=5
  end subroutine
end

use m
procedure(),pointer::p
p=>sub1
call p
if (i/=1) print *,'sub1:err'
if (.not. associated(p,sub1)) print *,'sub1:err2'
p=>sub2
call p
if (i/=2) print *,'sub2:err'
if (.not. associated(p,sub2)) print *,'sub2:err2'
print *,'pass'
end
