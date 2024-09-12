module m1
contains
  subroutine s(p)
   integer,pointer::p(:)
   if (any(p/=1)) print *,101
  end
  subroutine s0(p)
   integer,pointer::p(:)
   call s(p)
  end
end

use m1
   integer,pointer::p(:)
allocate( p(5),source =1 )
   call s0(p)
print *,'pass'
end
