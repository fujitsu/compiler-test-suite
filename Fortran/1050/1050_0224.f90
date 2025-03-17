
module mod1
type ty1
  integer :: a
  integer :: arr(2)
end type
end

subroutine suba(ch,x,t)
use mod1
character(10) ch(5)
complex(8)::x(5)
type(ty1)::t(5)
  if (ch(5) /= 'abc') print *,'ng01',ch
  if (x(5) /= 1.0) print *,'ng02',x
  if (t(5)%a /= 2) print *,'ng03',t
end

subroutine subb(ch,x,t)
use mod1
character(10) ch(5)
complex(8)::x(5)
type(ty1)::t(5)
!$omp task firstprivate(ch,x,t)
  if (ch(5) /= 'abc') print *,'ng04',ch
  if (x(5) /= 1.0) print *,'ng05',x
  if (t(5)%a /= 2) print *,'ng06',t
!$omp end task
  call suba(ch,x,t)
end

use mod1
character(10) ch(5)
complex(8)::x(5)
type(ty1)::t(5)
ch='abc'
x=1.0
t%a=2
!$omp task firstprivate(ch,x,t)
  if (ch(5) /= 'abc') print *,'ng07',ch
  if (x(5) /= 1.0) print *,'ng08',x
  if (t(5)%a /= 2) print *,'ng09',t
!$omp end task
call subb(ch,x,t)
print *,'pass'
end
