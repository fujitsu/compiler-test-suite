module mod
  type :: ty
    procedure(proc),pointer,nopass :: aa
  end type
  abstract interface
    subroutine proc()
    end subroutine
  end interface
end module

module mod1
use mod
contains
subroutine sub()
type(ty):: tp
end subroutine
end module

module mod2
use mod1
end

use mod2
print *,'pass'
end
