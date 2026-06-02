module mod
  integer::k,n
  type::t1
   contains
    procedure:: d_proc=>a_proc
  end type
   contains
    subroutine a_proc(this, a,b,c,d,e,f,g,h,i,j,l,m,o,p,q)
      class(t1)  :: this
      real :: a(k),b(n:k),c(n:2),d(2:k),e(2:2,k),f(2:k,k),g(n:2,k),h(n:k,k),&
   i(k:n,k),j(2,n:k),l(n:2,n:k),m(2:k,n:k),o(2:k,n:k),p(n:k,n:k),q(k,k)
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
   contains
     procedure :: d_proc
  end type t2
  contains
    subroutine d_proc(this, a,b,c,d,e,f,g,h,i,j,l,m,o,p,q)
      class(t2)  :: this
      real :: a(k),b(n:k),c(n:2),d(2:k),e(2:2,k),f(2:k,k),g(n:2,k),h(n:k,k),&
   i(k:n,k),j(2,n:k),l(n:2,n:k),m(2:k,n:k),o(2:k,n:k),p(n:k,n:k),q(k,k)
    end subroutine
 end
print *,'sngg327m : pass'
end
