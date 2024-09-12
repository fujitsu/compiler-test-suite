module m1
integer :: chk, tnum
end module

subroutine sub1(a)
use m1
logical(1),pointer :: a
integer :: x
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x == 1) then
!$omp atomic
  chk = chk + 1
endif
!$omp taskwait
if (x /= 2) print *, 'error 101', x
end subroutine

subroutine sub2(a)
use m1
logical(1) :: a
integer :: x
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x == 1) then
!$omp atomic
  chk = chk + 1
endif
!$omp taskwait
if (x /= 2) print *, 'error 201', x
end subroutine

subroutine sub3()
use m1
logical(1),pointer :: a
logical(1),target :: t
integer :: x
t=.true.
a=>t
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x == 1) then
!$omp atomic
  chk = chk + 1
endif
!$omp taskwait
if (x /= 2) print *, 'error 301', x
end subroutine

subroutine sub4()
use m1
logical(1) :: a
integer :: x
a=.true.
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x == 1) then
!$omp atomic
  chk = chk + 1
endif
!$omp taskwait
if (x /= 2) print *, 'error 401', x
end subroutine

use m1
use omp_lib
interface
  subroutine sub1(a)
    logical(1),pointer :: a
  end subroutine
  subroutine sub2(a)
    logical(1) :: a
  end subroutine
end interface

logical(1),target :: a
logical(1),pointer :: p
a=.true.
p=>a
chk=0
!$omp parallel
call sub1(p)
call sub2(a)
call sub3()
call sub4()
!$omp master
tnum = omp_get_num_threads()
!$omp end master
!$omp end parallel
if (chk == 0 .and. tnum >= 2) then
  print *, "ng", chk
endif
print *,'pass'
end
