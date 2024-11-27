call test01()
print *,"pass"
end

module mod
 common /com/com
end 

subroutine test01()
use mod
interface
subroutine subb()
import com
end subroutine
end interface
end subroutine
