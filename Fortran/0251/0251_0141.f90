call ss
contains
subroutine ss
integer :: i

do i=1,5
if(i==3) goto 99
block
if(i==3) print*,101
end block
99 print*,"pass"
end do
end subroutine
end
