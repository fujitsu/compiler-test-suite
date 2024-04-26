module m
  interface
    module subroutine msub1
    end subroutine
    module subroutine msub2
    end subroutine
  end interface
integer::nn=0
end

submodule(m)smod
  interface
    module subroutine sub
    end subroutine
  end interface
contains 
  module subroutine msub1
    call sub
  end
end

submodule(m:smod)xx
contains
  module subroutine sub
nn=100
  end subroutine
end

submodule(m)ssmod
  interface
    module subroutine sub
    end subroutine
  end interface
contains
  module subroutine msub2
    call sub
  end subroutine
  module subroutine sub
nn=200
  end subroutine
end

use m
call msub1
if (nn/=100) print *,501
call msub2
if (nn/=200) print *,502
print *,'pass'
end
