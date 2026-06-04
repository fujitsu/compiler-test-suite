module m1
  interface
    module subroutine proc1()
    end subroutine proc1
  end interface
  interface
    module subroutine proc2()
    end subroutine proc2
  end interface
end

submodule (m1) sm1
contains
  module procedure proc1
  end 
end 

submodule (m1:sm1) sm2
contains
  module subroutine proc2
    call proc1()
  end subroutine 
end 

use m1
print *,'sngg199n : pass'
end
