integer :: ii(10)
call sub(ii(2:8))
contains
subroutine sub(xx)
type(*) ::xx(:)
if(is_contiguous(xx) .neqv. .TRUE.)print*,"101"
print*,"PASS"
end subroutine sub
end
