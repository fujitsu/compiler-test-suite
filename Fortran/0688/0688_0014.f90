subroutine sub1()
  integer::a
  integer,save::ta1,ta2
  real(8)::b(10)
  real(8),save::tb1(10),tb2(10)
  pointer(pa, a)
  pointer(pb, b)
  ta1=1
  tb1=2
  ta2=3
  tb2=4
!$omp sections lastprivate(pa,pb)
!$omp section
  pa = loc(ta1)
  pb = loc(tb1)
!$omp section
  pa = loc(ta2)
  pb = loc(tb2)
!$omp end sections
  if (a/=3) print *,'101'
  if (any(b/=4)) print *,'102'
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
    integer::ta1,ta2
    real(8)::tb1(10),tb2(10)
    ta1=1
    tb1=2
    ta2=3
    tb2=4
!$omp sections lastprivate(pa,pb)
!$omp section
    pa = loc(ta1)
    pb = loc(tb1)
!$omp section
    pa = loc(ta2)
    pb = loc(tb2)
!$omp end sections
    if (a/=3) print *,'201'
    if (any(b/=4)) print *,'202'
  end subroutine sub2

end
