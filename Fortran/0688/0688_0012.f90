subroutine sub1()
  integer::a
  integer::ta
  real(8)::b(10)
  real(8)::tb(10)
  pointer(pa, a)
  pointer(pb, b)
  ta=1
  tb=2
  pa = loc(ta)
  pb = loc(tb)
!$omp parallel firstprivate(pa,pb)
  if (a/=1) print *,'101'
  if (any(b/=2)) print *,'102'
!$omp end parallel
end subroutine sub1

integer::a
integer::ta
real(8)::b(10)
real(8)::tb(10)
pointer(pa, a)
pointer(pb, b)
ta=1
tb=2
pa = loc(ta)
pb = loc(tb)

call sub1()
call sub2(pa,pb)
print *, 'pass'

contains
  subroutine sub2(pa,pb)
    integer::a
    real(8)::b(10)
    pointer(pa, a)
    pointer(pb, b)
!$omp parallel firstprivate(pa,pb)
    if (a/=1) print *,'201'
    if (any(b/=2)) print *,'202'
!$omp end parallel
  end subroutine sub2

end
