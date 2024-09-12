module m1
  contains
   subroutine s1(p)
    integer,pointer,contiguous:: p(:)
    if (any(p/=[1,2,3])) print *,101
   end subroutine
   subroutine s0
    integer,pointer,contiguous:: p(:)
allocate(p(3),source=[1,2,3])
    call s1(p)
   end subroutine
end
use m1
call s0
print *,'pass'
end
