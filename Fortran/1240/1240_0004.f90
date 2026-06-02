module PH21092_12
interface
 subroutine sub()  bind(C)
end subroutine
end interface
end module
module mod_13
use PH21092_12
private::assignment(=)
interface
 subroutine sub1()  bind(C)
end subroutine
end interface
interface  assignment(=)
end interface
end
use mod_13
print *,'sngt_21092_12:pass'
end program
