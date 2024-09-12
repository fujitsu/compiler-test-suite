module m1
  contains
   subroutine s1(p)
    integer,pointer,intent(in),contiguous:: p(:)
    if (any(p/=[1,2,3])) print *,101
   end subroutine
   subroutine s0
    integer,target            :: t(3)=[1,2,3]
    call s1(t)
   end subroutine
end
use m1
call s0
print *,'pass'
end
