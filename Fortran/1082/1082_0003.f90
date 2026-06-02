module mod
  integer::k=2
  type::t1
  end type
  contains 
    subroutine a_proc(this, a)
      class(t1)  :: this
      real :: a(k:2, *)
  if (any(lbound(a)/=[2,1])) print *,20011
  if (   (ubound(a,1)/=2)) print *,20021
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
  end type t2
  contains
    subroutine d_proc(this, a)
      class(t2)  :: this
      real :: a(k:2, *)
  if (any(lbound(a)/=[2,1])) print *,20012
  if (   (ubound(a,1)/=2)) print *,20023
    end subroutine
 end
subroutine foo
use mod2
      class(t2),allocatable  :: this
      real :: a(k:2,6)
allocate(this)
  call a_proc(this,a)
  call d_proc(this,a)
  if (any(lbound(a)/=[2,1])) print *,2001
  if (any(ubound(a)/=[2,6])) print *,2002
end
call foo
print *,'sngg894m : pass'
end
