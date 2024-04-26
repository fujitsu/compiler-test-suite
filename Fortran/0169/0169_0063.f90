module m
 data i/1/
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
contains
 subroutine parent_sub()
  i=3
 end subroutine
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
  call parent_sub
  if (i/=3) print *,103
  print *,'pass'
 end subroutine
end

use m
call msub
end
