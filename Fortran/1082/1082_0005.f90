module mod
  integer::k=2
  type::t1
  end type
  contains
    subroutine a_proc(this, a,b,c,d)
      class(t1)  :: this
      real :: a(k:),b(:,k:),c(k:,:),d(k:,k:)
if (any(lbound(a)/=2))print *,3101
if (any(lbound(b)/=[1,2]))print *,3102
if (any(lbound(c)/=[2,1]))print *,3103
if (any(lbound(d)/=[2,2]))print *,3104
if (any(ubound(a)/=3))print *,3105
if (any(ubound(b)/=[2,3]))print *,3106
if (any(ubound(c)/=[3,2]))print *,3107
if (any(ubound(d)/=[3,3]))print *,3108
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
  end type t2
  contains
    subroutine d_proc(this, a,b,c,d)
      class(t2)  :: this
      real :: a(k:),b(:,k:),c(k:,:),d(k:,k:)
if (any(lbound(a)/=2))print *,3201
if (any(lbound(b)/=[1,2]))print *,3202
if (any(lbound(c)/=[2,1]))print *,3203
if (any(lbound(d)/=[2,2]))print *,3204
if (any(ubound(a)/=3))print *,3205
if (any(ubound(b)/=[2,3]))print *,3206
if (any(ubound(c)/=[3,2]))print *,3207
if (any(ubound(d)/=[3,3]))print *,3208
    end subroutine
 end
subroutine s1
use mod2
use mod
      class(t2),allocatable  :: this
      real :: a(k:3),b(1:2,k:3),c(k:3,1:2),d(k:3,k:3)
allocate(this)
call a_proc(this, a,b,c,d)
call d_proc(this, a,b,c,d)
if (any(lbound(a)/=2))print *,3001
if (any(lbound(b)/=[1,2]))print *,3002
if (any(lbound(c)/=[2,1]))print *,3003
if (any(lbound(d)/=[2,2]))print *,3004
if (any(ubound(a)/=3))print *,3005
if (any(ubound(b)/=[2,3]))print *,3006
if (any(ubound(c)/=[3,2]))print *,3007
if (any(ubound(d)/=[3,3]))print *,3008
end
call s1
print *,'sngg896m : pass'
end
