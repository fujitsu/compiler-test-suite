module mod
interface 
  module subroutine suba
  end subroutine
  module subroutine subb
  end subroutine
  module subroutine subba
  end subroutine
  module subroutine subc
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

submodule(mod)smoda
contains
 module subroutine subba
  call suba
  call smod
 end subroutine
 subroutine smod
 end subroutine
end

use mod
call subb
end
