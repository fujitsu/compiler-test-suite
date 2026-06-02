integer :: ii(10)
call sub(ii(1:5))
contains
subroutine sub(xx)
integer ::xx(..)
if(is_contiguous(xx) .neqv. .FALSE.)print*,"PASS"
end subroutine sub
end
