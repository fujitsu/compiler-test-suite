module mod
integer :: iii
integer :: jjj
end

module mod2
use mod
volatile :: iii
ASYNCHRONOUS:: jjj
contains
subroutine subbb()
ASYNCHRONOUS:: iii
volatile :: jjj
iii=1
jjj=1
end subroutine
end

print *,"pass"
end
