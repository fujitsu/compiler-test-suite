module m1
  type t1
    integer:: x1
  end type
  type , extends(t1):: t2
    integer:: x2
  end type
  type , extends(t2):: t3
    integer:: x3
  end type
end
subroutine s1(k)
use m1
class (t1),pointer:: p=> null()
if (k==1) then
  kk=0
  select type ( p)
    type is(t1)
     kk=1
  end select
     if (associated(p)) print *,101
  allocate( t3:: p)
  p%x1=11
  if (kk/=1) print *,103
  kk=0
  select type (z => p)
    type is(t3)
  z%x2=12
     z%x3=13
     kk=1
   end select
  if (kk/=1) print *,104
else
  kk=0
     if (p%x1/=11) print *,101
  select type (z => p)
    type is(t3)
     kk=1
     if (z%x2/=12) print *,102
     if (z%x3/=13) print *,103
  end select
end if
end
use m1
call s1(1)
call s1(2)

print *,'pass'
end
