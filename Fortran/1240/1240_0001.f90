module PH21092_1
private::operator(+)
private::operator(-)
private::operator(*)
private::operator(/)
private::operator(**)
private::operator(==)
private::operator(/=)
private::operator(<)
private::operator(<=)
private::operator(>)
private::operator(>=)
private::operator(.not.)
private::operator(.or.)
private::operator(.and.)
private::operator(.eqv.)
private::operator(.neqv.)
private::operator(.xor.)
private::operator(//)
private::operator(.eor.)
!private::operator(..)
interface
 subroutine sub()  bind(C)
end subroutine
end interface
!interface  operator(+)
!end interface
end module
use PH21092_1
print *,'sngt_21092_1.:pass'
end program
