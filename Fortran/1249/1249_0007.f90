module m1
public::x
  procedure(d),pointer::x
interface g
 procedure::x
end interface
  contains
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end
module m2
  procedure(d),pointer::x
interface g
 procedure::x
end interface
public::x
  contains
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end
subroutine s1
use m1
       character,pointer::p
x=>d
allocate(p,source='1')
call g(p)
end
subroutine s2
use m2
       character,pointer::p
x=>d
allocate(p,source='1')
call g(p)
end
call s1
call s2
print *,'sngg982o : pass'
end
