module mod
  integer::k
  integer,parameter::n=1
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
contains
    function   a_proc(this, a,b,c,d,e,f) result(r)
      class(t1)  :: this
      real :: a(n+n:),b(:,n+n:),c(n+n:,:),d(n+n:,n+n:),e(:,:),f(:)
      real::r(size(b))
       r=1.
    end function
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    function  d_proc(this, a,b,c,d,e,f) result(r)
      class(t2)  :: this
      real :: a(n+n:),b(:,n+n:),c(n+n:,:),d(n+n:,n+n:),e(:,:),f(:)
      real::r(size(b))
      r=2.
    end function  
 end
use mod2
      real :: a(n+n:3),b(1:2,n+n:3),c(n+n:3,1:3),d(n+n:3,n+n:3),e(1:2,1:3),f(1:3)
      class(t2),allocatable  :: this
allocate(this)
if (any(d_proc(this,a,b,c,d,e,f)/=2)) print *,2001


print *,'sngg906m : pass'
end
