module m
implicit none
 interface 
  module subroutine sub
  end 
 end interface
end
submodule (m) xx
 interface 
  module subroutine  s2
  end
 end interface
 interface gen
  procedure    s2
 end interface
contains
  module subroutine sub
call gen
 end 
end
submodule (m:xx) yy
contains
   module procedure s2
  end
end

use m
call sub
print *,'sngg551h : pass'
end
