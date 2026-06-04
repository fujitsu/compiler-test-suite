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
end
submodule (m:xx) yy
contains
   module procedure s2
  end
end

use m
call sub
print *,'sngg549h : pass'
end
