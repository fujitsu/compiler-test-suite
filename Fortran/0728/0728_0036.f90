call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
print *,'pass' 
end

module mod_base
type bbb
   integer :: be1
end type 
private aaa
type aaa
   type (bbb), pointer :: ae1
   type (ccc), pointer :: ae2
end type 
type ccc
   integer :: be1
end type
end module
module mod1
use mod_base
end module
module mod2
use mod_base
end module
module mod1a
use mod1
use mod2
end module
module mod2a
use mod1
use mod2
end module

subroutine sub01()
use mod1a
use mod2a
end 

module mod1b
use mod2
end module
module mod2b
use mod1
end module
subroutine sub02()
use mod1b
use mod2b
end

module mod1c
use mod1
end module
module mod2c
use mod2
use mod1
end module
subroutine sub03()
use mod1c
use mod2c
end

module mod1d
use mod1
end module
module mod2d
use mod1
end module
subroutine sub04()
use mod1d
use mod2d
end

module mod1e
use mod1
end module
module mod2e
use mod1e
end module
subroutine sub05()
use mod1e
use mod2e
end

module mod1f
use mod1
end module
module mod2f
use mod1
use mod1e
end module
subroutine sub06()
use mod1
use mod1f
use mod2a
use mod2b
use mod2c
use mod2d
use mod2e
use mod2
end
