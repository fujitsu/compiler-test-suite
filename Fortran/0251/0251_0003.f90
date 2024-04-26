module m1
contains
subroutine ss
integer :: i
i= 3
block
dimension :: i(2:5)
integer :: i
i = 2
print *,i,'first block'
if(any(i/=2)) print*,101
end block

block
 integer :: i
 i=7
 if(i/=7) print*,102
 print*,i,'second block'
end block

if(i/=3) print*,103
print *,i,'main'
end subroutine
End module

use m1
call ss
end

