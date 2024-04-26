module n
  interface
    module subroutine sub
    end subroutine
  end interface
end

module m
 interface
   module subroutine sub
   end subroutine
 end interface
end

submodule(m)smod
contains
  subroutine subx
    print *,'ng'
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine sub
    print *,'pass'
  end subroutine
end

submodule(n)smod
contains
  subroutine subx
    print *,'ng'
  end subroutine
end

use m
call sub
end
