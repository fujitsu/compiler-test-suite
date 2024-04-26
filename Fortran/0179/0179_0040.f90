module mod
namelist /na/ i
end

use mod
call sub()
call suba()
call subb()
print *,'pass'
contains
subroutine sub()
write(1,na)
end subroutine
subroutine suba()
use mod
end subroutine
subroutine subb()
namelist /na/ i
end subroutine
end
