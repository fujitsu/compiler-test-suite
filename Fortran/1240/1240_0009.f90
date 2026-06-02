module PH21092_3
private::read(unformatted)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  read(unformatted)
end interface
end module
use PH21092_3
print *,'sngt_21092_3:pass'
end program
