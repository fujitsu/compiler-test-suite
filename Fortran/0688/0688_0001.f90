subroutine sub1(a)
logical,pointer :: a
integer :: x
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 101', x
end subroutine

subroutine sub2(a)
logical :: a
integer :: x
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 201', x
end subroutine

subroutine sub3()
logical,pointer :: a
logical,target :: t
integer :: x
t=.false.
a=>t
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 301', x
end subroutine

subroutine sub4()
logical :: a
integer :: x
a=.false.
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 401', x
end subroutine

subroutine sub5()
integer :: a
integer :: x
a = 1
x=1
!$omp task if(a==0) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 501', x
end subroutine

subroutine sub6()
integer :: x
x=1
!$omp task if(.false.) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 601', x
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
a=.false.
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
