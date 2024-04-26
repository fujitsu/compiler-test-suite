module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
contains
module subroutine msub()
  call sub
end subroutine
subroutine sub()
  integer::a
  a=100
  print *,'pass'
end subroutine
end

use m
call msub
end
