module PH21092_13
private
interface
 subroutine sub()  bind(C)
end subroutine
end interface
end module
module mod_13
use PH21092_13
private::assignment(=)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  assignment(=)
end interface
end
use mod_13
print *,'sngt_21092_13:pass'
end program
