module m1
type x1
  integer:: y1
end type
type,extends(x1):: x2
  integer :: y2
end type
contains
subroutine s1(a,n)
class (x1)::a
type (x2):: b

k=0
select type(a)
  type is(x2)
    if (n/=1) then
      print *,101
    endif
    k=1
end select
if (k/=1) print *,102
if (n==1) then 
  if (same_type_as(a,b))then
  else 
    print *,202
  endif
else
   print *,301
endif
end subroutine
end

subroutine s0
use m1
type (x2):: v
call s1(v,1)
end
call s0
print *,'pass'
end
