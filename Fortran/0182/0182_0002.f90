module m
  interface
    module subroutine msub1() bind(c,name='x1')
    end 
    module subroutine msub2() bind(c,name='x2')
    end 
  end interface
  integer::k=0
end

submodule(m)smod
contains 
  module subroutine msub1() bind(c,name='x1')
    call sub
  end
  subroutine sub
    k=k+10
  end
end

submodule(m)ssmod
contains
  module subroutine msub2() bind(c,name='x2')
    call sub
  end 
   subroutine sub
    k=k+100
  end 
end

use m
call msub1
call msub2
if (k/=110) print *,10001
print *,'pass'
end
