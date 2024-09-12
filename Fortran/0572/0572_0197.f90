integer :: ii(10)
call sub(ii(2:5:2))
contains
subroutine sub(xx)
type(*) ::xx(:)
if(is_contiguous(xx) .neqv. .FALSE.)print*,"101"
print*,"PASS"
end subroutine sub
end
