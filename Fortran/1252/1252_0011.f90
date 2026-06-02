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
public::t,g
  contains
    subroutine d(p)
       character(*),pointer::p
if (p/='1') print *,1001
    end subroutine
end

submodule (m1) smod
       character,pointer::p
contains
 module subroutine t
   x=>d
   allocate(p,source='1')
   call g(p)
 end
end
use m1
       character,pointer::p
call t
   allocate(p,source='1')
   call g(p)
print *,'sngg970o : pass'
end
