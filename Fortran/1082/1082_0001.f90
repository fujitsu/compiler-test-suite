module mod
  integer::k=2
  type::t1
  end type
  contains 
    subroutine a_proc(this, a)
      class(t1)  :: this
      real :: a(k, *)
  if (any(lbound(a)/=[1,1])) print *,20011
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
      real :: a(k, *)
  if (any(lbound(a)/=[1,1])) print *,20111
  if (   (ubound(a,1)/=2)) print *,20121
    end subroutine
 end
subroutine foo
use mod2
      class(t2),allocatable  :: this
      real :: a(k, 3)
allocate(this)
  call a_proc(this,a)
  call d_proc(this,a)
  if (any(lbound(a)/=[1,1])) print *,21011
  if (   (ubound(a,1)/=2)) print *,20021
  if (   (ubound(a,2)/=3)) print *,20031
end
call foo
print *,'sngg892m : pass'
end
