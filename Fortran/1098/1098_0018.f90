module m
 interface 
  module recursive subroutine sub(n)
  end subroutine
 end interface
 interface gen
  procedure::    sub
 end interface
end
submodule (m) xx
contains
  module recursive subroutine sub(n)
  n=n+1
  if (n>3) return 
  call gen(n)
 end subroutine
end

use m
n=0
call sub(n)
print *,'sngg441h : pass'
end
