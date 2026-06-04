module m1
  procedure(d),pointer::x
   interface g
     procedure::x
   end interface
private
public::t,g,d,e
  contains
    subroutine d(p)
       character(*),pointer::p
if (p/='1') print *,1001
    end subroutine
    subroutine e
   x=>d
    end subroutine
end

use m1
       character,pointer::p
call e
   allocate(p,source='1')
   call g(p)
print *,'sngg974o : pass'
end
