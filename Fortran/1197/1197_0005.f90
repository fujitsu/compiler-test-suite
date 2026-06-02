module m1
     type t
        character(:),pointer::i
     end type t
     type,extends(t) :: t2
        character(:),pointer::ii
        character(:),pointer::ii2
        character(:),allocatable::n1(:)
     end type t2
        class(t2),pointer::ttt(:)
        class(t),allocatable::var(:)
contains
 subroutine s1(value)
     class(t)::value(:)
     var=value
 end 
end
subroutine ss
use m1
 allocate(t2::ttt(2))
 select type(ttt)
   type is(t2)
     allocate(ttt(2)%i,source='12')
     allocate(ttt(2)%ii,source='123')
     allocate(ttt(2)%ii2,source='12345')
     allocate(ttt(2)%n1(2),source='78')
end select
call s1(ttt)
 select type(var)
   type is(t2)
    var(2)%i='ab'
    var(2)%ii='aba'
    var(2)%ii2='ababa'
    var(2)%n1='cd'
end select
k=0
 select type(ttt)
   type is(t2)
    if (ttt(2)%i/='ab') print *,8001
    if (ttt(2)%ii/='aba') print *,8002
    if (ttt(2)%ii2/='ababa') print *,8003
    if (ttt(2)%n1(2)/='78') print *,8004
    k=1
end select
if (k/=1) print *,8005
end
call ss
        print*,"sngg066q : pass"
        end

