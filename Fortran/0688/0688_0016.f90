subroutine sub1()
  integer::a
  integer,save::ta0,ta1,ta2
  real(8)::b(10)
  real(8),save::tb0(10),tb1(10),tb2(10)
  pointer(pa, a)
  pointer(pb, b)
  ta0=1
  tb0=2
  ta1=3
  tb1=4
  ta2=5
  tb2=6
  pa = loc(ta0)
  pb = loc(tb0)
!$omp sections firstprivate(pa,pb) lastprivate(pa,pb)
!$omp section
  if (a/=1) print *,'101'
  if (any(b/=2)) print *,'102'
  pa = loc(ta1)
  pb = loc(tb1)
!$omp section
  pa = loc(ta2)
  pb = loc(tb2)
!$omp end sections
  if (a/=5) print *,'103'
  if (any(b/=6)) print *,'104'
end subroutine sub1

integer::a
real(8)::b(10)
pointer(pa, a)
pointer(pb, b)
call sub1()
call sub2(pa,pb)
print *, 'pass'

contains
  subroutine sub2(pa,pb)
    integer::a
    real(8)::b(10)
    pointer(pa, a)
    pointer(pb, b)
    integer::ta0,ta1,ta2
    real(8)::tb0(10),tb1(10),tb2(10)
    ta0=1
    tb0=2
    ta1=3
    tb1=4
    ta2=5
    tb2=6
    pa = loc(ta0)
    pb = loc(tb0)
!$omp sections firstprivate(pa,pb) lastprivate(pa,pb)
!$omp section
    if (a/=1) print *,'201'
    if (any(b/=2)) print *,'202'
    pa = loc(ta1)
    pb = loc(tb1)
!$omp section
    pa = loc(ta2)
    pb = loc(tb2)
!$omp end sections
    if (a/=5) print *,'203'
    if (any(b/=6)) print *,'204'
  end subroutine sub2

end
