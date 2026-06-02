module m1
     type t
        character(2)::c
     end type t
     type,extends(t) :: te
        integer(8)::dux
        type(t),allocatable::txv
     end type 
contains
subroutine s1(tc)
        class(te),allocatable::var
class(te)::tc
var=tc
if (var%c/='12') print *,921
if (var%txv%c/='ab') print *,922
end
end
subroutine ss
use m1
        class(te),allocatable::ttt
 allocate(ttt)
 ttt%c='12'
 allocate(ttt%txv)
 ttt%txv%c='ab'
call s1(ttt)
end
call ss
        print*,"sngg451t : pass"
        end
