module m
implicit none
 interface 
  module subroutine  s2
  end subroutine
 end interface
end
submodule (m) xx
 interface gen
  procedure :: s2
 end interface
contains
  module procedure s2
  end procedure
end 

use m
print *,'sngg177o : pass'
end
