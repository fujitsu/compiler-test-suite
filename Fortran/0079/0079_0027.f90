module mod
interface 
  module subroutine suba
  end subroutine
  module subroutine subb
  end subroutine
end interface
contains
  module subroutine suba
  end subroutine
end

submodule(mod)smod
contains
 module subroutine subb
  call suba
  call smod
 end subroutine
 subroutine smod
  print *,'pass'
 end subroutine
end

use mod
call subb
end
