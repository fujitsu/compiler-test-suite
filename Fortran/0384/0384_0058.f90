module mod
procedure(character(len=10)) ,pointer :: ip22
contains
function cfun() result(ccc)
character(len=10) :: ccc
ccc="1234567890"
end function
end

use mod,aaa=>ip22
aaa=>cfun
if (1.eq.2) print *,aaa()
print *,"pass"
end
