module PH21092
private::assignment(=)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  assignment(=)
end interface
end module
use PH21092
print *,'PH21092:pass'
end program
