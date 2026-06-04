module PH21092_9
public::read(unformatted)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  read(unformatted)
end interface
end module
use PH21092_9
print *,'sngt_21092_9:pass'
end program
