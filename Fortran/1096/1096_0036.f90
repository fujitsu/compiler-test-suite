module m
implicit none
 interface 
  module subroutine sub
  end 
  module subroutine  s2
  end
  module subroutine  s3
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
end
submodule (m:xx) yx
contains

   module procedure s2
  end
   module procedure s3
     call gen
  end
end

use m
call sub
call s2
call s3
print *,'sngg554h : pass'
end
