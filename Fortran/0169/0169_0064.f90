module m
 integer,private::a
 interface
  module subroutine msub
  end subroutine
 end interface
end 

submodule(m)smod
contains
 module subroutine msub
  a=10
  call sub
  print *,'pass'
 end subroutine
 subroutine sub
  if (a/=10) print *,101
 end subroutine
end

use m
integer::a
call msub
end
