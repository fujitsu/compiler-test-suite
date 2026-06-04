module mod
  integer::k
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
   contains
    subroutine a_proc(this, a)
      class(t1)  :: this
      real :: a(k, *)
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this, a)
      class(t2)  :: this
      real :: a(k, *)
    end subroutine
 end
print *,'sngg325m : pass'
end
