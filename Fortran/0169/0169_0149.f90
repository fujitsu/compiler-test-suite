module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
end

submodule(m:smod)ssmod
 data i/1/
contains
 subroutine sub()
  i=1
 end subroutine
 module subroutine msub
  print *,'pass'
 end subroutine
end

use m
call msub
end
