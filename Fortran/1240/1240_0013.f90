module PH21092_7
public::operator(+)
public::operator(-)
public::operator(*)
public::operator(/)
public::operator(**)
public::operator(==)
public::operator(/=)
public::operator(<)
public::operator(<=)
public::operator(>)
public::operator(>=)
public::operator(.not.)
public::operator(.or.)
public::operator(.and.)
public::operator(.eqv.)
public::operator(.neqv.)
public::operator(.xor.)
public::operator(//)
public::operator(.eor.)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
!interface  operator(+)
!end interface
end module
use PH21092_7
print *,'sngt_21092_7.:pass'
end program
