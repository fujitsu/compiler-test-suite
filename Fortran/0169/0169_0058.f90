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
  call hoge
 contains
  subroutine hoge
   call sssub
  end subroutine
 end subroutine
 subroutine sssub
  print *,'pass'
 end subroutine
end

use m
call sub
end
