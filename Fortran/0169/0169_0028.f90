module m
  interface
    module subroutine msub
    end subroutine
  end interface
end

submodule(m)smod
contains
  subroutine sub
    print *,'pass'
  end subroutine
end

submodule(m:smod)ssmod
contains
  module subroutine msub
    call sub
  end subroutine
end


use m
call msub
end
