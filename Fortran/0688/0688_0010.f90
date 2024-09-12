integer,pointer::a
real(8),pointer::b(:)
integer,target::ta
real(8),target::tb(10)
ta=1
tb=2
a=>ta
b=>tb
call sub1(a,b)
call sub2(a,b)
call sub3(a,b)
call sub4(a,b)
call sub5(a,b)
call sub6(a,b)
call sub7(a,b)
call sub8(a,b)
print *, 'pass'

contains
  subroutine sub1(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp parallel firstprivate(a,b)
    if (a/=1) print *,'101'
    if (any(b/=2)) print *,'101'
!$omp end parallel
  end subroutine sub1

  subroutine sub2(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp do firstprivate(a,b)
    do i = 1,2
       if (a/=1) print *,'201'
       if (any(b/=2)) print *,'202'
    end do
!$omp end do
  end subroutine sub2

  subroutine sub3(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp sections firstprivate(a,b)
!$omp section
    if (a/=1) print *,'301'
    if (any(b/=2)) print *,'302'
!$omp section
    if (a/=1) print *,'303'
    if (any(b/=2)) print *,'304'
!$omp end sections
  end subroutine sub3

  subroutine sub4(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp single firstprivate(a,b)
    if (a/=1) print *,'401'
    if (any(b/=2)) print *,'402'
!$omp end single
  end subroutine sub4

  subroutine sub5(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp parallel do firstprivate(a,b)
    do i = 1,2
       if (a/=1) print *,'501'
       if (any(b/=2)) print *,'502'
    end do
!$omp end parallel do
  end subroutine sub5

  subroutine sub6(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp parallel sections firstprivate(a,b)
!$omp section
    if (a/=1) print *,'601'
    if (any(b/=2)) print *,'602'
!$omp section
    if (a/=1) print *,'603'
    if (any(b/=2)) print *,'604'
!$omp end parallel sections
  end subroutine sub6

  subroutine sub7(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
    integer::ara(10)
    real(8)::arb(10)
!$omp parallel workshare firstprivate(a,b)
    ara = a
    arb = b
!$omp end parallel workshare
    if (any(ara/=1)) print *,'701'
    if (any(arb/=2)) print *,'702'
  end subroutine sub7

  subroutine sub8(a,b)
    integer,pointer,intent(in)::a
    real(8),pointer,intent(in)::b(:)
!$omp task firstprivate(a,b)
    if (a/=1) print *,'801'
    if (any(b/=2)) print *,'802'
!$omp end task
!$omp taskwait
  end subroutine sub8
end
