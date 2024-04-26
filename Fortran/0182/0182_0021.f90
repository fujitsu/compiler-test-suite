module m
  private
  interface
    module subroutine msub1
    end 
    module subroutine msub2
    end 
  end interface
  integer::k=0
public:: mp
contains 
subroutine mp
call msub1
call msub2
if (k/=110) print *,10001
end
end

submodule(m)smod
contains 
  module procedure msub1
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
    k=k+100
  end 
end

use m
call mp
print *,'pass'
end
