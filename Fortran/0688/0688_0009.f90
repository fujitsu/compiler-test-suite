integer::a
real(8)::b
real(8)::c(10)
a=1
b=2
c=3
call sub1(a,b,c)
call sub2(a,b,c)
call sub3(a,b,c)
call sub4(a,b,c)
call sub5(a,b,c)
call sub6(a,b,c)
call sub7(a,b,c)
call sub8(a,b,c)
print *, 'pass'

contains
  subroutine sub1(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp parallel firstprivate(a,b,c)
    if (a/=1) print *,'101'
    if (b/=2) print *,'102'
    if (any(c/=3)) print *,'103'
!$omp end parallel
  end subroutine sub1

  subroutine sub2(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp do firstprivate(a,b,c)
    do i = 1,2
       if (a/=1) print *,'201'
       if (b/=2) print *,'202'
       if (any(c/=3)) print *,'203'
    end do
!$omp end do
  end subroutine sub2

  subroutine sub3(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp sections firstprivate(a,b,c)
!$omp section
    if (a/=1) print *,'301'
    if (b/=2) print *,'302'
    if (any(c/=3)) print *,'303'
!$omp section
    if (a/=1) print *,'304'
    if (b/=2) print *,'305'
    if (any(c/=3)) print *,'306'
!$omp end sections
  end subroutine sub3

  subroutine sub4(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp single firstprivate(a,b,c)
    if (a/=1) print *,'401'
    if (b/=2) print *,'402'
    if (any(c/=3)) print *,'403'
!$omp end single
  end subroutine sub4

  subroutine sub5(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp parallel do firstprivate(a,b,c)
    do i = 1,2
       if (a/=1) print *,'501'
       if (b/=2) print *,'502'
       if (any(c/=3)) print *,'503'
    end do
!$omp end parallel do
  end subroutine sub5

  subroutine sub6(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp parallel sections firstprivate(a,b,c)
!$omp section
    if (a/=1) print *,'601'
    if (b/=2) print *,'602'
    if (any(c/=3)) print *,'603'
!$omp section
    if (a/=1) print *,'604'
    if (b/=2) print *,'605'
    if (any(c/=3)) print *,'606'
!$omp end parallel sections
  end subroutine sub6

  subroutine sub7(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
    integer::ara(10)
    real(8)::arb(10)
    real(8)::arc(10)
!$omp parallel workshare firstprivate(a,b,c)
    ara = a
    arb = b
    arc = c
!$omp end parallel workshare
    if (any(ara/=1)) print *,'701'
    if (any(arb/=2)) print *,'702'
    if (any(arc/=3)) print *,'703'
  end subroutine sub7

  subroutine sub8(a,b,c)
    integer,intent(in)::a
    real(8),intent(in)::b
    real(8),intent(in)::c(10)
!$omp task firstprivate(a,b,c)
    if (a/=1) print *,'801'
    if (b/=2) print *,'802'
    if (any(c/=3)) print *,'803'
!$omp end task
!$omp taskwait
  end subroutine sub8
end
