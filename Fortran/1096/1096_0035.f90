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
contains
  module subroutine sub
 interface gen
  procedure    s2
 end interface
call gen
 end 
   module procedure s2
  end
end

use m
call sub
print *,'sngg553h : pass'
end
