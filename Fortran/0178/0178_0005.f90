print *,'pass'
end

module mod
external sub
end

subroutine suub()
use mod,aaa=>sub
call aaa()
end
subroutine sub()
end subroutine
