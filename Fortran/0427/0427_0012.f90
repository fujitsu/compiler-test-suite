module mod
contains
subroutine sub
print *,'sub'
entry subaa
print *,'subaa'
end subroutine
end

module mod0
contains
subroutine sub1
print *,'sub'
entry subbb
print *,'subbb'
end subroutine
end

module mod1
use mod,only:subaa
end module

module mod2
use mod0,only:subbb
end module

module mod3
use mod1,only:subaa
use mod2,only:subbb
end module

module mod4
use mod1,only:subaa
use mod2,only:subbb
end module

use mod4
call subaa
call subbb
end
