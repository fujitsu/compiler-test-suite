call subb()
print *,'pass'
end
module mod
allocatable :: a
private
end
subroutine subb()
use mod
end
