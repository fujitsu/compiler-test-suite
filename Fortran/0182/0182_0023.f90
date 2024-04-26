module m
  integer:: x=2,y=11
  interface
    module subroutine sub
    end subroutine
  end interface
contains
end
submodule(m) mm
    integer:: z=10,zz=1
contains
  module procedure sub
    integer ::y=10
    if (x/=2) write(1,*) 101
    if (y/=10) write(1,*)102
    if (z/=10) write(1,*)103
    if (zz/=1) write(1,*)104
  end procedure
end

use m
call sub()
print *,'pass'
end
