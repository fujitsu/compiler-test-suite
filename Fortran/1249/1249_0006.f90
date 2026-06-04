module m1
  procedure(d)::x
   interface g
     procedure::x
   end interface
private
public::g
  contains
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end

use m1
integer::x=1
       character,pointer::p
if (x/=1) print *,1010
allocate(p,source='1')
call g(p)
print *,'sngg979o : pass'
end
    subroutine x(p)
       character(*),pointer::p
if (p/='1') print *,9001
    end subroutine
