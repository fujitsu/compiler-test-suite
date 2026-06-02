integer :: ii(10)
call sub(ii(2))
contains
subroutine sub(xx)
integer ::xx(..)
if(is_contiguous(xx) .neqv. .TRUE.)print*,"101"
print*,"PASS"
end subroutine sub
end
