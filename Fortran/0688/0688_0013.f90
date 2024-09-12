subroutine sub1()
  integer,pointer::a
  integer,target,save::ta
  real(8),pointer::b(:)
  real(8),target,save::tb(10)
  ta=1
  tb=2
  a=>null()
  b=>null()
!$omp do lastprivate(a,b)
  do i = 1,10
     a=>ta
     b=>tb
     if (i == 10) then
        a=i
        b=i
     endif
  end do
!$omp end do
  if (a/=10) print *,'101'
  if (any(b/=10)) print *,'102'
end subroutine sub1

subroutine sub2()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta1
  real(8),target::tb1(10)
  integer,target::ta2
  real(8),target::tb2(10)
  ta1=1
  tb1=2
  ta2=3
  tb2=4
  a=>null()
  b=>null()
!$omp sections lastprivate(a,b)
!$omp section
  a=>ta1
  b=>tb1
!$omp section
  a=>ta2
  b=>tb2
!$omp end sections
  if (a/=3) print *,'201'
  if (any(b/=4)) print *,'201'
end subroutine sub2

subroutine sub3()
  integer,pointer::a
  integer,target::ta
  real(8),pointer::b(:)
  real(8),target::tb(10)
  ta=1
  tb=2
  a=>null()
  b=>null()
!$omp parallel do lastprivate(a,b)
  do i = 1,10
     a=>ta
     b=>tb
     if (i == 10) then
        a=i
        b=i
     endif
  end do
!$omp end parallel do
  if (a/=10) print *,'301'
  if (any(b/=10)) print *,'302'
end subroutine sub3

subroutine sub4()
  integer,pointer::a
  real(8),pointer::b(:)
  integer,target::ta1
  real(8),target::tb1(10)
  integer,target::ta2
  real(8),target::tb2(10)
  ta1=1
  tb1=2
  ta2=3
  tb2=4
  a=>null()
  b=>null()
!$omp parallel sections lastprivate(a,b)
!$omp section
  a=>ta1
  b=>tb1
!$omp section
  a=>ta2
  b=>tb2
!$omp end parallel sections
  if (a/=3) print *,'401'
  if (any(b/=4)) print *,'401'
end subroutine sub4

call sub1()
call sub2()
call sub3()
call sub4()
print *, 'pass'
end
