module m1
  interface
    module subroutine proc1()
    end subroutine
  end interface
  integer::n=0
end

submodule (m1) smod
  interface
    module subroutine proc2()
    end subroutine
  end interface
contains
  module procedure proc1
  if (n==0) then
    call proc2
  endif
  end 
end 

submodule (m1:smod) smod2
contains
  module subroutine proc2
  n=1
    call p()
  end subroutine 
  subroutine p
    call proc1
  end subroutine
end 

use m1
call proc1
if (n/=1) print *,202
print *,'sngg203n : pass'
end
