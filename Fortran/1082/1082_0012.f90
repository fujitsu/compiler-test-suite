module mod
  integer::k
  integer,parameter::n=1
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
contains
    function   a_proc(this, a,b,c,d,e,f)
      class(t1)  :: this
      real :: a(n+n:),b(:,n+n:),c(n+n:,:),d(n+n:,n+n:),e(:,:),f(:)
       a_proc=1.
    end function
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    function  d_proc(this, a,b,c,d,e,f)
      class(t2)  :: this
      real :: a(n+n:),b(:,n+n:),c(n+n:,:),d(n+n:,n+n:),e(:,:),f(:)
      d_proc=1.
    end function  
 end
print *,'sngg904m : pass'
end
