module PH21092_15
private::aaaa
interface
 subroutine sub()  bind(C)
 end subroutine sub
end interface
interface  aaaa
subroutine sub1()
end subroutine sub1
end interface
end module
use PH21092_15
print *,'sngt_21092_15:pass'
end program
