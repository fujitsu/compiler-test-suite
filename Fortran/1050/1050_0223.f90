
module mod1
type ty1
  integer :: a
  integer :: arr(2)
end type
end

subroutine suba(ch,x,t)
  use mod1
  character(10) ch
  complex(8)::x
  type(ty1)::t
  if (ch /= 'abc') print *,'ng01',ch
  if (x /= 1.0) print *,'ng02',x
  if (t%a /= 2) print *,'ng03',t%a
end

subroutine subb(ch,x,t)
use mod1
character(10) ch
complex(8)::x
type(ty1)::t
!$omp task firstprivate(ch,x,t)
  if (ch /= 'abc') print *,'ng04',ch
  if (x /= 1.0) print *,'ng05',x
  if (t%a /= 2) print *,'ng06',t%a
!$omp end task
  call suba(ch,x,t)
end

use mod1
character(10) ch
complex(8)::x
type(ty1)::t
ch='abc'
x=1.0
t%a=2
!$omp parallel
!$omp task firstprivate(ch,x,t)
  if (ch /= 'abc') print *,'ng07',ch
  if (x /= 1.0) print *,'ng08',x
  if (t%a /= 2) print *,'ng09',t%a
!$omp end task
call subb(ch,x,t)
!$omp end parallel
print *,'pass'
end
