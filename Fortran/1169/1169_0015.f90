module m1
  interface
    module subroutine proc1()
    end subroutine
  end interface
  interface
    module subroutine proc2()
    end subroutine
  end interface
  integer::n=0
end

submodule (m1) smod
contains
  module procedure proc1
  n=1
  end 
end 

submodule (m1:smod) smod2
contains
  module subroutine proc2
    call p()
  end subroutine 
  subroutine p
    call proc1
  end subroutine
end 

use m1
call proc2
if (n/=1) print *,202
print *,'sngg202n : pass'
end
