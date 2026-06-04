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
  module procedure            sub
  n=n+1
  if (n>3) return 
  call gen(n)
 end 
end

use m
n=0
call sub(n)
print *,'sngg442h : pass'
end
