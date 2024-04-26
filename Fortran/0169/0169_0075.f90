module m
 interface
  module subroutine sub
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine sub
  call ssub
 end subroutine
 subroutine ssub
  call sssub
 contains
  subroutine sssub
   call ext_sub
  end subroutine
 end subroutine
end

subroutine ext_sub
 print *,'pass'
end

use m
call sub
end
