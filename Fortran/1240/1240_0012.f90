module PH21092_6
private::operator(.aaa.)
public::operator(.bbb.)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
interface  operator(.aaa.)
end interface
end module
use PH21092_6
print *,'sngt_21092_6:pass'
end program
