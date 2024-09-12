subroutine sub1(a, b)
use omp_lib
logical,pointer :: a, b
integer :: x
x=1
!$omp task if(a) final(b) shared(x)
if (.not. omp_in_final()) print *, 'error 102'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 103'
x=2
!$omp end task
if (x /= 2) print *, 'error 101', x
!$omp end task
end subroutine

subroutine sub2(a, b)
use omp_lib
logical :: a, b
integer :: x
x=1
!$omp task if(a) final(b) shared(x)
if (.not. omp_in_final()) print *, 'error 202'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 203'
x=2
!$omp end task
if (x /= 2) print *, 'error 201', x
!$omp end task
end subroutine

subroutine sub3()
use omp_lib
logical,pointer :: a, b
logical,target :: t, u
integer :: x
t=.false.
u=.true.
a=>t
b=>u
x=1
!$omp task if(a) final(b) shared(x)
if (.not. omp_in_final()) print *, 'error 302'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 303'
x=2
!$omp end task
if (x /= 2) print *, 'error 301', x
!$omp end task
end subroutine

subroutine sub4()
use omp_lib
logical :: a, b
integer :: x
a=.false.
b=.true.
x=1
!$omp task if(a) final(b) shared(x)
if (.not. omp_in_final()) print *, 'error 402'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 403'
x=2
!$omp end task
if (x /= 2) print *, 'error 401', x
!$omp end task
end subroutine

subroutine sub5()
use omp_lib
integer :: a, b
integer :: x
a=1
b=1
x=1
!$omp task if(a==0) final(b==1) shared(x)
if (.not. omp_in_final()) print *, 'error 502'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 503'
x=2
!$omp end task
if (x /= 2) print *, 'error 501', x
!$omp end task
end subroutine

subroutine sub6()
use omp_lib
integer :: x
x=1
!$omp task if(.false.) final(.true.) shared(x)
if (.not. omp_in_final()) print *, 'error 602'
!$omp task shared(x)
if (.not. omp_in_final()) print *, 'error 603'
x=2
!$omp end task
if (x /= 2) print *, 'error 601', x
!$omp end task
end subroutine

interface
  subroutine sub1(a, b)
    logical,pointer :: a, b
  end subroutine
  subroutine sub2(a, b)
    logical :: a, b
  end subroutine
end interface

logical,target :: a, b
logical,pointer :: p, q
a=.false.
b=.true.
p=>a
q=>b
!$omp parallel
call sub1(p, q)
call sub2(a, b)
call sub3()
call sub4()
call sub5()
call sub6()
!$omp end parallel
print *,'pass'
end
