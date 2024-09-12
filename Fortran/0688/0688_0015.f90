subroutine sub1()
  integer,pointer::a
  integer,target,save::ta1,ta2
  real(8),pointer::b(:)
  real(8),target,save::tb1(10),tb2(10)
  ta1=1
  tb1=2
  ta2=3
  tb2=4
  a=>ta1
  b=>tb1
!$omp do firstprivate(a,b) lastprivate(a,b)
  do i = 1,1
     if (a/=1) print *,'101'
     if (any(b/=2)) print *,'102'
     a=>ta2
     b=>tb2
  end do
!$omp end do
  if (a/=3) print *,'103'
  if (any(b/=4)) print *,'104'
end subroutine sub1

subroutine sub2()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta0,ta1,ta2
  real(8),target::tb0(10),tb1(10),tb2(10)
  ta0=1
  tb0=2
  ta1=3
  tb1=4
  ta2=5
  tb2=6
  a=>ta0
  b=>tb0
!$omp sections firstprivate(a,b) lastprivate(a,b)
!$omp section
  if (a/=1) print *,'201'
  if (any(b/=2)) print *,'202'
  a=>ta1
  b=>tb1
!$omp section
  a=>ta2
  b=>tb2
!$omp end sections
  if (a/=5) print *,'203'
  if (any(b/=6)) print *,'204'
end subroutine sub2

subroutine sub3()
  integer,pointer::a
  integer,target,save::ta1,ta2
  real(8),pointer::b(:)
  real(8),target,save::tb1(10),tb2(10)
  ta1=1
  tb1=2
  ta2=3
  tb2=4
  a=>ta1
  b=>tb1
!$omp parallel do firstprivate(a,b) lastprivate(a,b)
  do i = 1,1
     if (a/=1) print *,'301'
     if (any(b/=2)) print *,'302'
     a=>ta2
     b=>tb2
  end do
!$omp end parallel do
  if (a/=3) print *,'303'
  if (any(b/=4)) print *,'304'
end subroutine sub3

subroutine sub4()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta0,ta1,ta2
  real(8),target::tb0(10),tb1(10),tb2(10)
  ta0=1
  tb0=2
  ta1=3
  tb1=4
  ta2=5
  tb2=6
  a=>ta0
  b=>tb0
!$omp parallel sections firstprivate(a,b) lastprivate(a,b)
!$omp section
  if (a/=1 .and. a/=5) print *,'201'
  if (any(b/=2) .and. any(b/=6)) print *,'202'
  a=>ta1
  b=>tb1
!$omp section
  a=>ta2
  b=>tb2
!$omp end parallel sections
  if (a/=5) print *,'403'
  if (any(b/=6)) print *,'404'
end subroutine sub4

call sub1()
call sub2()
call sub3()
call sub4()
print *, 'pass'
end
