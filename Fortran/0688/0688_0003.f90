subroutine sub1(a)
logical(1),pointer :: a
integer :: x
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 101', x
end subroutine

subroutine sub2(a)
logical(1) :: a
integer :: x
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 201', x
end subroutine

subroutine sub3()
logical(1),pointer :: a
logical(1),target :: t
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
logical(1) :: a
integer :: x
a=.false.
x=1
!$omp task if(a) shared(x)
x=2
!$omp end task
if (x /= 2) print *, 'error 401', x
end subroutine

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
a=.false.
p=>a
!$omp parallel
call sub1(p)
call sub2(a)
call sub3()
call sub4()
!$omp end parallel
print *,'pass'
end
