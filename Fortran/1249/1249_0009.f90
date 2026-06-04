module m1
  procedure(d),pointer,private::x
public::d
interface g
  procedure::x
end interface
  contains
    subroutine w
     x=>d
    end subroutine
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end

subroutine s1
use m1
       character,pointer::p
integer::x=1
if (x/=1) print *,1001
allocate(p,source='1')
call w
call g(p)
end
call s1
print *,'sngg985o : pass'
end
