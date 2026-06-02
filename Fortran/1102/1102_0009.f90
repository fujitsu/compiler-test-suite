module m
implicit none
 interface 
  module subroutine sub
  end 
 end interface
end
submodule (m) xx
 interface gen
  procedure    s2
 end interface
 interface 
  module subroutine  s2
  end
 end interface
contains
  module subroutine sub
call gen
 end 
end
submodule (m:xx) x2
contains
   module procedure s2
  end
end

use m
call sub
print *,'sngg171o : pass'
end
