module m1
  integer:: val=0
  procedure(sub),pointer,protected:: p
  contains
   subroutine sub
    val=val+1
   end subroutine
   subroutine ss
    p=> sub
   end subroutine
end
use m1
call ss
call p
if (val/=1) print *,201
print *,'pass'
end
