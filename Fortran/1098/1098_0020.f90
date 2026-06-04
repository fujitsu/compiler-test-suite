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
  module procedure            sub
 interface gen
  procedure::    sub
 end interface
  n=n+1
  if (n>3) return 
  call gen(n)
 end 
end

use m
n=0
call sub(n)
print *,'sngg444h : pass'
end
