call subb()
print *,'pass'
end
module mod
allocatable :: a
end
subroutine subb()
use mod
end
