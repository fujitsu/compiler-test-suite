module m
type, bind(c):: x
 integer::x1
 integer::x2
end type
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
type(x):: v
  common /vcmn/v
  bind (c,name='Vmn'):: /vcmn/
contains 
  module procedure  msub1
    call sub
    v%x2=v%x2+10
  end
  subroutine sub
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
    k=k+10
  end
end

submodule(m)ssmod
contains
  module procedure  msub2
type(x):: v
  common /vcmn/v
  bind (c,name='Vmn'):: /vcmn/
    call sub
    v%x2=v%x2+100
  end 
   subroutine sub
  common /xcmn/k
  bind (c,name='Cmn'):: /xcmn/
    k=k+100
  end 
end

use m
type(x):: v
  common /vcmn/v
  bind (c,name='Vmn'):: /vcmn/
call msub1
call msub2
if (k/=110) print *,10001
if (v%x2/=110) print *,10002
print *,'pass'
end
