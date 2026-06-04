module PH21092_2
private::read(formatted)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  read(formatted)
end interface
end module
use PH21092_2
print *,'sngt_21092_2:pass'
end program
