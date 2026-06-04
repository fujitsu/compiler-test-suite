module PH20400
private
interface
 subroutine sub()  bind(C, name="free")
end subroutine
end interface
end module PH20400
use PH20400
interface
subroutine sub()  bind(C, name="free")
end subroutine
end interface
print *,'PH20400:pass'
end program
