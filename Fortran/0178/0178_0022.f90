use mod
call sub()
print *,'pass'
end
module mm 
namelist /an/i
end
module mod
use mm
namelist /anaa/ii
contains
subroutine sub()
use mm
end subroutine
end
