module m1
     type t(k)
        integer,kind::k
        character(k)::c='12'
     end type t
contains
subroutine s1(tc)
        class(t(2)),allocatable::var
class(t(2))::tc
var=tc
if (var%c/='12') print *,921
if (len(var%c)/=2) print *,922
deallocate(var)
allocate(var,source=tc)
if (var%c/='12') print *,921
if (len(var%c)/=2) print *,922
deallocate(var)
!!!allocate(var,mold=tc)
end
end
subroutine ss
use m1
        class(t(2)),allocatable::ttt
 allocate(ttt)
call s1(ttt)
end
call ss
        print*,"sngg452t : pass"
        end
