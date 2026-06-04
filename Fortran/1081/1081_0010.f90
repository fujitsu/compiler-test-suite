module mod
  integer::k
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
   contains
    subroutine a_proc(this, a,b,c,d,e,f)
      class(t1)  :: this
      real :: a(1:),b(:,1:),c(1:,:),d(1:,1:),e(:,:),f(:)
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
      real :: a(1:),b(:,1:),c(1:,:),d(1:,1:),e(:,:),f(:)
    end subroutine
 end
print *,'sngg313m : pass'
end
