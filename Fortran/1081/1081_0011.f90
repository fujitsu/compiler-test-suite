module mod
  integer::k
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
contains    
    subroutine a_proc(this, a,b,c,d,e,f)
      class(t1)  :: this
      real :: a(2:),b(:,2:),c(2:,:),d(2:,2:),e(:,:),f(:)
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
   contains
    subroutine d_proc(this, a,b,c,d,e,f)
      class(t2)  :: this
      real :: a(2:),b(:,2:),c(2:,:),d(2:,2:),e(:,:),f(:)
    end subroutine
 end
print *,'sngg314m : pass'
end
