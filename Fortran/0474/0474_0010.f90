module m1
  type x
   integer::x1
  end type
  type ,extends(x):: y
   integer::y1
  end type
 class(x),pointer   ::v(:)
end
subroutine s1
use m1
allocate(v(2),source=[x(1),x(2)])
if (v(1)%x1/=1) print *,101
select type (v)
  type is(x)
    if (v(1)%x1/=1) print *,102
  type is(y)
    if (v(1)%x1/=1) print *,201
    if (v(1)%y1/=2) print *,202
  end select
end 
call s1
print *,'pass'
end
 


