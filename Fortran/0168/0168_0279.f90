module m1
contains
subroutine s(x,z)
integer:: x(:) ,y(3),z(:,:,:)
 if (is_contiguous(x)) print *,101
 if (is_contiguous(y(3:1:-1))) print *,102
 if (.not.is_contiguous(z)) print *,103
end subroutine
end
use m1
integer::x(3),z(3,3,3)
call s(x(3:1:-1),z)
print *,'pass'
end
