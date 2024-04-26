module m
  interface
    module subroutine msub1
    end 
    module subroutine msub2
    end 
  end interface
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
end

submodule(m)smod
contains 
  module subroutine msub1
    call sub
  end
  subroutine sub
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
    k=k+10
  end
end

submodule(m)ssmod
contains
  module subroutine msub2
    call sub
  end 
   subroutine sub
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
    k=k+100
  end 
end

use m
call msub1
call msub2
if (k/=110) print *,10001
print *,'pass'
end
