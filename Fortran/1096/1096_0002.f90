module m
implicit none
 interface 
  module subroutine sub
  end 
  module subroutine  s2
  end
 end interface
end
submodule (m) xx
 interface gen
  procedure    s2
 end interface
contains
  module subroutine sub
call gen
 end 
   module procedure s2
  end
end

use m
call sub
print *,'sngg453h : pass'
end
