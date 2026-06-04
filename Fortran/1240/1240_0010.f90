module PH21092_4
private::write(formatted)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  write(formatted)
end interface
end module
use PH21092_4
print *,'sngt_21092_4:pass'
end program
