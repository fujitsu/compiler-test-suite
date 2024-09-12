module m1
procedure (s1),pointer::ss1
contains
subroutine s1
print *,"pass"
end subroutine
end
module m2
use m1
interface gnr
end interface
end
module m3
use m2,ggnr=>gnr
end
program main
use m2
use m3
call s1
end
