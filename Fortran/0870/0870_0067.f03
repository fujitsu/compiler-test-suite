module m1
implicit none
contains
subroutine s1(k)
implicit none
integer::k,kk
class(*),allocatable::r(:)
select case(k)
  case(16)
    allocate(r(2),source='x')
end select
kk=0
call sub(r,kk)
end subroutine
subroutine sub(r,kk)
integer::kk
class(*),allocatable::r(:)
select type(p=>r)
 type is(character(*))
     if (len(p(2)(:1))/=1) print *,20142
     if (   (p(2)(:1)/='x')) print *,20145
   kk=1
end select
if (kk/=1) print *,90001
kk=0
end subroutine
end
use m1
call s1(16)
print *,'pass'
end
  

