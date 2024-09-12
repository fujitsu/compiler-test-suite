subroutine sub1(a)
use omp_lib
logical,pointer :: a
integer :: x
x=1
!$omp task final(a) shared(x)
!$omp task shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 101', x
!$omp taskwait
!$omp end task
!$omp taskwait
end subroutine

subroutine sub2(a)
use omp_lib
logical :: a
integer :: x
x=1
!$omp task final(a) shared(x)
!$omp task shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 201', x
!$omp taskwait
!$omp end task
!$omp taskwait
end subroutine

subroutine sub3()
use omp_lib
logical,pointer :: a
logical,target :: t
integer :: x
t=.true.
a=>t
x=1
!$omp task final(a) shared(x)
if (.not. omp_in_final()) print *, 'error 302'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 303'
x=2
!$omp end task
if (x /= 2) print *, 'error 301', x
!$omp taskwait
!$omp end task
!$omp taskwait
end subroutine

subroutine sub4()
use omp_lib
logical :: a
integer :: x
a=.true.
x=1
!$omp task final(a) shared(x)
if (.not. omp_in_final()) print *, 'error 402'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 403'
x=2
!$omp end task
if (x /= 2) print *, 'error 401', x
!$omp taskwait
!$omp end task
!$omp taskwait
end subroutine

subroutine sub5()
use omp_lib
integer :: a
integer :: x
a = 1
x=1
!$omp task final(a==1) shared(x)
if (.not. omp_in_final()) print *, 'error 502'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 503'
x=2
!$omp end task
if (x /= 2) print *, 'error 501', x
!$omp taskwait
!$omp end task
!$omp taskwait
end subroutine

subroutine sub6()
use omp_lib
integer :: x
x=1
!$omp task final(.true.) shared(x)
if (.not. omp_in_final()) print *, 'error 602'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 603'
x=2
!$omp end task
if (x /= 2) print *, 'error 601', x
!$omp taskwait
!$omp end task
!$omp taskwait
end subroutine

interface
  subroutine sub1(a)
    logical,pointer :: a
  end subroutine
  subroutine sub2(a)
    logical :: a
  end subroutine
end interface

logical,target :: a
logical,pointer :: p
a=.true.
p=>a
!$omp parallel
call sub1(p)
call sub2(a)
call sub3()
call sub4()
call sub5()
call sub6()
!$omp end parallel
print *,'pass'
end
