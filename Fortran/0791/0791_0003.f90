module m
  interface
    module subroutine msub1
    end subroutine
    module subroutine msub2
    end subroutine
  end interface
contains 
  subroutine sub
    print *,'m'
  end
end

submodule(m)smod
contains 
  module subroutine msub1
    call sub
  end
  subroutine sub
    print *,'smod'
  end
end


submodule(m)ssmod
contains
  module subroutine msub2
    call sub
  end subroutine
   subroutine sub
    print *,'ssmod'
  end subroutine
end

use m
call msub1
call msub2
call sub
end
