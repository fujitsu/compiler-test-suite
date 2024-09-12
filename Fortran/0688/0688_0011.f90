subroutine sub1()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp parallel firstprivate(a,b)
  if (a/=1) print *,'101'
  if (any(b/=2)) print *,'102'
!$omp end parallel
end subroutine sub1

subroutine sub2()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp do firstprivate(a,b)
  do i = 1,2
     if (a/=1) print *,'201'
     if (any(b/=2)) print *,'202'
  end do
!$omp end do
end subroutine sub2

subroutine sub3()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp sections firstprivate(a,b)
!$omp section
  if (a/=1) print *,'301'
  if (any(b/=2)) print *,'302'
!$omp section
  if (a/=1) print *,'303'
  if (any(b/=2)) print *,'304'
!$omp end sections
end subroutine sub3

subroutine sub4()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp single firstprivate(a,b)
  if (a/=1) print *,'401'
  if (any(b/=2)) print *,'402'
!$omp end single
end subroutine sub4

subroutine sub5()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp parallel do firstprivate(a,b)
  do i = 1,2
     if (a/=1) print *,'501'
     if (any(b/=2)) print *,'502'
  end do
!$omp end parallel do
end subroutine sub5

subroutine sub6()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp parallel sections firstprivate(a,b)
!$omp section
  if (a/=1) print *,'601'
  if (any(b/=2)) print *,'602'
!$omp section
  if (a/=1) print *,'603'
  if (any(b/=2)) print *,'604'
!$omp end parallel sections
end subroutine sub6

subroutine sub7()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  integer::ara(10)
  real(8)::arb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp parallel workshare firstprivate(a,b)
  ara = a
  arb = b
!$omp end parallel workshare
  if (any(ara/=1)) print *,'701'
  if (any(arb/=2)) print *,'702'
end subroutine sub7

subroutine sub8()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>ta
  b=>tb
!$omp task firstprivate(a,b)
  if (a/=1) print *,'801'
  if (any(b/=2)) print *,'802'
!$omp end task
!$omp taskwait
end subroutine sub8

call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
print *, 'pass'
end
