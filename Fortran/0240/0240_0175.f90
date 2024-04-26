module mod
integer,parameter::i=1
end module
use mod
interface
subroutine sub(k)
import::i
integer(i)::k
end subroutine
end interface
print *,'pass'
end
