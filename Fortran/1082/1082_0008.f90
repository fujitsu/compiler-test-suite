module mod
  integer::k=2
  type::t1
  end type
  contains
    subroutine a_proc(this, a,b,c,d,e,f)
      class(t1)  :: this
real :: a(k:),b(:,k:),c(k:,:),d(k:,k:),e(:,:),f(:)
if (any(lbound(a)/=2))print *,3101
if (any(lbound(b)/=[1,2]))print *,3102
if (any(lbound(c)/=[2,1]))print *,3103
if (any(lbound(d)/=[2,2]))print *,3104
if (any(lbound(e)/=[1,1]))print *,3109
if (any(lbound(f)/= 1))print *,3110
if (any(ubound(a)/=3))print *,3105
if (any(ubound(b)/=[2,3]))print *,3106
if (any(ubound(c)/=[3,3]))print *,3107
if (any(ubound(d)/=[3,3]))print *,3108
if (any(ubound(e)/=[2,3]))print *,3111
if (any(ubound(f)/= 2))print *,3112
    end subroutine
end
module mod2
  use mod
  type, extends(t1) :: t2
  end type t2
  contains
    subroutine d_proc(this, a,b,c,d,e,f)
      class(t2)  :: this
real :: a(k:),b(:,k:),c(k:,:),d(k:,k:),e(:,:),f(:)
if (any(lbound(a)/=2))print *,3001
if (any(lbound(b)/=[1,2]))print *,3202
if (any(lbound(c)/=[2,1]))print *,3203
if (any(lbound(d)/=[2,2]))print *,3204
if (any(lbound(e)/=[1,1]))print *,3209
if (any(lbound(f)/= 1))print *,3210
if (any(ubound(a)/=3))print *,3205
if (any(ubound(b)/=[2,3]))print *,3206
if (any(ubound(c)/=[3,3]))print *,3207
if (any(ubound(d)/=[3,3]))print *,3208
if (any(ubound(e)/=[2,3]))print *,3211
if (any(ubound(f)/= 2))print *,3212
    end subroutine
 end
subroutine s1
use mod2
use mod
      class(t2),allocatable  :: this
real :: a(2:3),b(1:2,2:3),c(2:3,1:3),d(2:3,2:3),e(1:2,1:3),f(1:2)
allocate(this)
call a_proc(this, a,b,c,d,e,f)
call d_proc(this, a,b,c,d,e,f)
if (any(lbound(a)/=2))print *,3001
if (any(lbound(b)/=[1,2]))print *,3002
if (any(lbound(c)/=[2,1]))print *,3003
if (any(lbound(d)/=[2,2]))print *,3004
if (any(lbound(e)/=[1,1]))print *,3009
if (any(lbound(f)/= 1))print *,3010
if (any(ubound(a)/=3))print *,3005
if (any(ubound(b)/=[2,3]))print *,3006
if (any(ubound(c)/=[3,3]))print *,3007
if (any(ubound(d)/=[3,3]))print *,3008
if (any(ubound(e)/=[2,3]))print *,3011
if (any(ubound(f)/= 2))print *,3012
end
call s1
print *,'sngg899m : pass'
end
