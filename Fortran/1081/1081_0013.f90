module mod
  integer::k
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
   contains
    subroutine a_proc(this, a,b,c,d)
      class(t1)  :: this
      real :: a(k:*),b(2:2,k:*),c(k:2,2:*),d(k:2,k:*)
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this, a,b,c,d)
      class(t2)  :: this
      real :: a(k:*),b(2:2,k:*),c(k:2,2:*),d(k:2,k:*)
    end subroutine
 end
print *,'sngg316m : pass'
end
