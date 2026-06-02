integer :: ii(10)
call sub(ii(2:5))
contains
subroutine sub(xx)
type(*) ::xx(..)
if(is_contiguous(xx) .neqv. .FALSE.)print*,"PASS"
end subroutine sub
end
