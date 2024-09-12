integer :: ii(10)
call sub(ii(1:5))
contains
subroutine sub(xx)
type(*) ::xx(*)
if(is_contiguous(xx) .neqv. .TRUE.)print*,"101"
call sub2(xx)
end subroutine sub
subroutine sub2(yy)
type(*) :: yy(*)
if(is_contiguous(yy) .neqv. .TRUE.)print*,"102"
print*,"PASS"
end subroutine sub2
end
