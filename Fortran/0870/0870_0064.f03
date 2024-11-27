module m1
implicit none
type x
  integer,allocatable::x1(:)
end type
type y
  type(x),allocatable::y1
end type
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
class(*)::r(:)
select type(p=>r)
 type is(character(*))
     if (len(p(:)(:1))/=1) print *,20142
     if (any(p(:)(:1)/='x')) print *,20145
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
  

