module mod
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
   contains
    subroutine a_proc(this, c,k)
      class(t1)  :: this
      real :: c(k+1:,k+1:)
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this, c,k)
      class(t2)  :: this
      real :: c(k+1:,k+1:)
    end subroutine
 end
use mod2
print *,'sngg359m : pass'
end
