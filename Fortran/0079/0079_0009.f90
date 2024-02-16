module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
  character(4)::a='pass'
  namelist/nml/a
end module m

submodule(m)smod
contains
  module subroutine sub
    character(99)::buf
    write(buf,NML=nml)
    if (buf == " &NML A=pass/") print *,'pass'
  end subroutine
end submodule smod

use m
call sub
end

