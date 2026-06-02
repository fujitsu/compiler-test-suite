module m1
     type x
        character(2)::xv(2)
     end type
     type,extends(x)::xe
        character(:),allocatable::xev(:)
     end type

     type t
        character(2)::i
     end type t
     type,extends(t) :: t2
        class(x),pointer     ::xx(:)
     end type t2
        class(t),pointer::ttt(:)
        class(t),allocatable::var(:)
        integer :: ii
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
     ttt(2)%i='12'
     allocate(xe::ttt(2)%xx(2))
     ttt(2)%xx(2)%xv='78'
     select type(p=>ttt(2)%xx)
       type is(xe)
         allocate(p(2)%xev(2),source='78')
     end select
end select
call s1(ttt)
 select type(var)
   type is(t2)
    var(2)%i='ab'
    var(2)%xx(2)%xv='cd'
     select type(p=>var(2)%xx)
       type is(xe)
         p(2)%xev='cd'
     end select
end select
k=0
 select type(ttt)
   type is(t2)
    if (ttt(2)%i/='12') print *,8001
    if (ttt(2)%xx(2)%xv(2)/='cd') print *,8004
     select type(p=>ttt(2)%xx)
       type is(xe)
         if (p(2)%xev(2)/='cd') print *,80041
    k=1
     end select
end select
if (k/=1) print *,8005
end
call ss
        print*,"sngg091q : pass"
        end

