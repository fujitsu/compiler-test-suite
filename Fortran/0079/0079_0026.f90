module mod
interface 
  module subroutine suba
  end subroutine
  module subroutine subb
  end subroutine
  module subroutine subc
  end subroutine
end interface
contains
  module subroutine subc
  end subroutine
  subroutine xxx()
  call subc()
  end subroutine
end

use mod
call subc
print *,'pass'
end
submodule(mod)smod
contains
 module subroutine suba
 end subroutine
 module subroutine subb
  call suba
  call subc
 end subroutine
end

