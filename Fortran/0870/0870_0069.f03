module m1
contains
function f() result(r)
implicit none
class(*),allocatable::r
    allocate(r,source='x')
end 
end 
subroutine s()
use m1
type ty
end type
kk=0
select type(p=>f())
 type is(integer)
 type is(character(*))
     if (len(p)/=1) print *,20142
     if (   (p)/='x') print *,20145
   kk=1
 type is(ty)
end select
if (kk/=1) print *,90001
kk=0
end subroutine
use m1
call s
print *,'pass'
end
  

