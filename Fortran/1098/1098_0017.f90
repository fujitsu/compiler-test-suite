module m
 type x
   integer::x1=2
 end type
 type y
   integer::x1=3
 end type
 interface 
  module recursive subroutine sub(n)
  end subroutine
 end interface
end
submodule (m) xx
contains
  module recursive subroutine sub(n)
 interface gen
  procedure::    sub
 end interface
  n=n+1
  if (n>3) return 
  call gen(n)
 end subroutine
end

use m
n=0
call sub(n)
print *,'sngg439h : pass'
end
