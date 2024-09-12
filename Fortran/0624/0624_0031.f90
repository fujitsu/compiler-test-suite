module m1
 type b
   integer,pointer::b1
 end type
 type,extends(b)::e
   integer,pointer::e1
 end type
 type,extends(e)::x
   integer,pointer::x1
 end type
contains
function funb(p) result(r)
 class(b),pointer    ::r(:)
 class(b),pointer:: p(:)
allocate(r(-2:-1),stat=k)
if (k/=0)print *,3201

n=0
select type(p)
 type is(b)
      n=n+5
  select type (r)
    type is(e)
       print *,3204
    type is(b)
      if (any(lbound(p)/=-2))print *,3210
      n=n+5
     type is(x)
       print *,3212
     class default
       print *,3213
  end select
     class default
       print *,3216
end select
if (n/=10) print *,3217
end function
end
subroutine s1
use m1
class(b),pointer::p(:),pp(:)
allocate(p(-2:-1),stat=k)
if (k/=0)print *,201
pp => funb(p)
end
call s1
 print*,'pass'
end
