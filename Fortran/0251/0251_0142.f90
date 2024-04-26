call ss
contains
subroutine ss
integer :: i
i=0

block
99 print*,"pass"
i=i+1
if(i==2) goto 88
goto 99
88 print*,"pass"
end block
end subroutine
end
