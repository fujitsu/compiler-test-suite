module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
 data i/1/
end

submodule(m:smod)ssmod
contains
 subroutine sub()
  i=2
 end subroutine
 module subroutine msub
  if (i/=1) print *,101
  call sub
  if (i/=2) print *,102
  print *,'pass'
 end subroutine
end

use m
call msub
end
