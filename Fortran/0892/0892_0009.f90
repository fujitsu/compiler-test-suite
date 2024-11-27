interface Assignment(=)
subroutine ss(d1,d2)
integer :: d1
character(len=*),intent(in) :: d2
end subroutine
end interface Assignment(=)
block
interface Assignment(=)
subroutine ss(d1,d2)
integer :: d1
character(len=*):: d2
end subroutine
end interface Assignment(=)
integer ii
ii = 'ABC'
if(ii==3) print*,'pass'
end block
end

subroutine ss(d1,d2)
integer :: d1
character(len=*),intent(in) :: d2
d1 = len(d2)
end subroutine


