module m1
 type t
   integer::x
 end type t
  type tt
  class(*), allocatable::iii
  end type tt
interface gen
  procedure::x1,x2,x3
end interface
contains
subroutine x1(k)
integer,intent(in)::k
if (k/=1) print *,1010
end
subroutine x2(k)
character(*),intent(in)::k
if (k/='1') print *,10101
end
subroutine x3(k)
type(t),intent(in)::k
if (k%x/=1) print *,10102
end
end
subroutine s1(n)
use m1
  type(tt) :: ttt
  type(t) :: obj_t

obj_t = t(1)
if (n==1) then
 allocate(ttt%iii,source=1)
else if (n==2) then
 allocate(ttt%iii,source='1')
else
 allocate(ttt%iii,source=t(1))
endif
         select type(zzz=>ttt%iii)
         type is(t)
          zzz = obj_t
          call gen(zzz)
         type is(integer)
          zzz = 1
          call gen(zzz)
         type is(character(*))
          zzz =  '1'
          call gen(zzz)
        end select
        end
call s1(1)
call s1(2)
call s1(3)
call s1(1)
call s1(2)
call s1(3)
print *,'pass'
end


