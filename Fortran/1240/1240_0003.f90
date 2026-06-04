module PH21092_10
public::write(unformatted)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  write(unformatted)
end interface
end module
use PH21092_10
print *,'sngt_21092_5:pass'
end program
