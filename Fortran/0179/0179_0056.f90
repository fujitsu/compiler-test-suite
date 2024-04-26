call subb()
print *,'pass'
end
module mod
allocatable :: a
end
module mod2
use mod
end
subroutine subb()
use mod2
end
