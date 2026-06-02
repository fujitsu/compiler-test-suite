module PH21092_14
public::assignment(=)
interface  assignment(=)
end interface
interface
 subroutine sub()  bind(C)
end subroutine
end interface
end module
use PH21092_14
print *,'sngt_21092_14:pass'
end program
