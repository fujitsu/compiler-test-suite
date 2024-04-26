module m
  interface
    module subroutine msub1
    end 
    module subroutine msub2
    end 
  end interface
end

submodule(m)smod
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
contains 
  module procedure  msub1
    call sub
  end
  subroutine sub
    k=k+10
  end
end

submodule(m)ssmod
contains
  module procedure  msub2
    call sub
  end 
   subroutine sub
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
    k=k+100
  end 
end

use m
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
call msub1
call msub2
if (k/=110) print *,10001
print *,'pass'
end
