module mod
  integer::k
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
   contains
    subroutine a_proc(this)
      class(t1)  :: this
print *,1001
    end subroutine
end
module rt
use mod
private
public::t1,k
end
module mod2
  use rt
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this)
      class(t2)  :: this
    end subroutine
 end
module km
use mod2
private::t2,t1
  public sub
  interface
     module subroutine sub
     end subroutine sub
  end interface
end

submodule(km)smod
contains
  module subroutine sub
type (t2)::v
call v%d_proc()
 end subroutine sub
end submodule smod

use km
call sub

print *,'sngg991n : pass'
end
