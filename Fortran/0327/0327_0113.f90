module m
contains
subroutine sub(a,b)
  integer,dimension (:)::a,b
entry ent(a,b)
  a(10)=b(1)
end subroutine
end

use m
integer,dimension (10)::x
x=1
call sub(x,x)
call ent(x,x)
print *,x
print *,'pass'
end
