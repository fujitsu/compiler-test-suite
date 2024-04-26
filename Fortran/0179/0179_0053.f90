call sub()
print *,'pass'
end
module mod
integer,allocatable :: a(:)
end 
subroutine sub()
use mod
allocate(a(10))
end
