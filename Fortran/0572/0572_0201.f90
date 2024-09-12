integer :: xx(10)

call sub(xx(1:10:2))

contains
subroutine sub(dmy1)
type(*)::dmy1(:)
if(is_contiguous(dmy1) .neqv. .FALSE.)print*,"101"
call sub2(dmy1)
end subroutine sub

subroutine sub2(dmy2)
type(*)::dmy2(:)
if(is_contiguous(dmy2).neqv..FALSE.)print*,"102"
call sub3(dmy2)
end subroutine sub2

subroutine sub3(dmy3)
type(*) :: dmy3(*)
if(is_contiguous(dmy3).neqv..TRUE.)print*,"103"
print*,"PASS"
end subroutine sub3
end
