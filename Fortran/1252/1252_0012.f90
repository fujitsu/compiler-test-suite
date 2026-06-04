module m1
  procedure(d),pointer::x
   interface g
     procedure::x
   end interface
interface
  module subroutine t
  end
end interface
private
public::t,g,d
  contains
    subroutine d(p)
       character(*),pointer::p
if (p/='1') print *,1001
    end subroutine
end

use m1
       character,pointer::p
call t
   allocate(p,source='1')
   call g(p)
print *,'sngg973o : pass'
end
submodule(m1) smod
contains
  module subroutine t
   x=>d
  end
  end
