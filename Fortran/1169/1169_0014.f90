module m1
  interface
    module subroutine proc1()
    end subroutine proc1
  end interface
end

submodule (m1) sm1
  interface
    module subroutine proc2()
    end subroutine proc2
  end interface
contains
  module procedure proc1
  call proc2
  end 
end 

submodule (m1:sm1) sm2
contains
  module subroutine proc2
    call proc1()
  end subroutine 
end 

use m1
print *,'sngg201n : pass'
end
