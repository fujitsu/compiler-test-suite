call sub01()
print *,'pass'
end

module mod01
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
equivalence (i,i)
end subroutine
end
subroutine sub01()
use mod01
call sub()
end
