integer:: a(5),b(5),c(5),d(5),e(5),f(5),g(5),h(5)
!$omp parallel workshare
forall (i=1:5)
  a(i)   = i
  b      = i
  c(:)   = i
  d(1:5) = i
  e      = a(:)
  f(:)   = a(:)
  g      = a(:)
  h      = a(1:5)
end forall
!$omp end parallel workshare
if (any(a/=(/1,2,3,4,5/))) print *,"fail"
if (any(b/=(/5,5,5,5,5/))) print *,"fail"
if (any(c/=(/5,5,5,5,5/))) print *,"fail"
if (any(d/=(/5,5,5,5,5/))) print *,"fail"
if (any(e/=(/1,2,3,4,5/))) print *,"fail"
if (any(f/=(/1,2,3,4,5/))) print *,"fail"
if (any(g/=(/1,2,3,4,5/))) print *,"fail"
if (any(h/=(/1,2,3,4,5/))) print *,"fail"
print *,'pass'
end
