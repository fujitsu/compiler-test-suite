module m1
  type y
   integer::x1
  end type
  type,extends( y )::x
    integer:: a
  end type
 type z
  class(y),pointer    ::py(:)
  class(y),allocatable::ay(:)
 end type
  type(z)::n(2)
contains
subroutine s1()
k=0
select type (w=>n(1)%ay)
 type is(x)
  k=1
 type is(y)
print *,0,'type is y'
end select
if (k/=1) print *,8012
end subroutine
end
use m1
allocate(x::n(1)%ay(2))
k=0
select type (w=>n(1)%ay)
 type is(x)
  k=1
 type is(y)
print *,'type is y'
end select
if (k/=1) print *,9012
call s1()
print *,'pass'
end
