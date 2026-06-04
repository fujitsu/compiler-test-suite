module PH21092_10
public::write(formatted)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  write(formatted)
end interface
end module
use PH21092_10
print *,'sngt_21092_10:pass'
end program
