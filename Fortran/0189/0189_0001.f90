module km
integer,parameter::kh=1000
end
module m1
use km
type y
  integer::y1
end type
type x
  class(y),allocatable::x1
  integer::x2=2
end type
contains
subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x1)) print *,101
  if (a%x2/=2        ) print *,111
  k=0
  select type (p=>a%x1)
    type is(y)
     k=1
  end select
  if(k/=1) print *,201
end subroutine
end
use m1
  type(x):: a
do n=1,kh
call s1(a)
  if (allocated(a%x1)) print *,102
end do
print *,'pass'
end

  
