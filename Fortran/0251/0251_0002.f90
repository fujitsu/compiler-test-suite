call ss

contains
subroutine ss
integer :: i
i= 3
block
integer :: i
i = 2
if(i/=2) print*,101,'first block'
end block

block
 integer :: i
 i=7
 if(i/=7) print*,102,'second block'
end block
if(i/=3) print*,103,'main'
print *,'pass'
end subroutine
End

