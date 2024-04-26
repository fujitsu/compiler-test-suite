call subb()
print *,'pass'
end
module mod
allocatable :: a
end
module mod1
use mod
end
subroutine subb()
use mod1
end
