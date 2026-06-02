module m1
     type t
        character(:),pointer::i
     end type t
     type,extends(t) :: t2
        character(:),pointer::ii
        character(:),pointer::ii2
        character(:),allocatable::n1
     end type t2
        class(t2),pointer::ttt
        class(t),allocatable::var
contains
 subroutine s1(value)
     class(t)::value
     var=value
 end 
end
subroutine ss
use m1
 allocate(t2::ttt)
 select type(ttt)
   type is(t2)
     allocate(ttt%i,source='12')
     allocate(ttt%ii,source='123')
     allocate(ttt%ii2,source='12345')
     allocate(ttt%n1,source='78')
end select
call s1(ttt)
 select type(var)
   type is(t2)
    var%i='ab'
    var%ii='aba'
    var%ii2='ababa'
    var%n1='cd'
end select
k=0
 select type(ttt)
   type is(t2)
    if (ttt%i/='ab') print *,8001
    if (ttt%ii/='aba') print *,8002
    if (ttt%ii2/='ababa') print *,8003
    if (ttt%n1/='78') print *,8004
    k=1
end select
if (k/=1) print *,8005
end
call ss
        print*,"sngg051q : pass"
        end

