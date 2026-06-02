module m
implicit none
 interface 
  module subroutine  s1(r)
  end subroutine
  module subroutine  s2(k)
  end subroutine
  module subroutine  s
  end subroutine
 end interface
end
submodule (m) xx
 interface gen
  procedure :: s2,s1
 end interface
contains
  module subroutine s1(r)
  end subroutine
  module procedure s2
  end procedure
  module procedure s
    call gen(1.0)
    call gen(1)
  end procedure
end 

use m
call s1(1.0)
call s2(1)
print *,'sngg178o : pass'
end
