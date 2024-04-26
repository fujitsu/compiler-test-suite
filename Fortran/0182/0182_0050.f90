module m
  interface
    module subroutine msub1
    end subroutine
    module subroutine msub2
    end subroutine
  end interface
integer::nn
end

submodule(m)smod
contains 
  module subroutine msub1
    call sub
  end
  subroutine sub
    nn=1
  end
end

submodule(m)ssmod
contains
  module subroutine msub2
    call sub
  end subroutine
   subroutine sub
    nn=2
  end subroutine
end

use m
call msub1
if (nn/=1) print *,201
call msub2
if (nn/=2) print *,202
print *,'pass'
end
