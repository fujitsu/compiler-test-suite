integer:: a(5),b(5),c(5),kk

a = (/1,2,3,4,5/)
b = (/1,2,3,4,5/)
c = (/1,2,3,4,5/)
kk= 0

!$omp parallel workshare
forall (i=1:5)
    a(i) = a(i) + i
end forall
!$omp end parallel workshare
if (any(a/=(/2,4,6,8,10/))) print *,"fail"

!$omp parallel workshare
forall (j=1:5)
  forall (i=1:5)
    b(i) = b(i) + i
  end forall
end forall
!$omp end parallel workshare
if (any(b/=(/2,4,6,8,10/))) print *,"fail"

!$omp parallel workshare
forall (j=1:5)
  kk = kk + j
  forall (i=1:5)
    c(i) = c(i) + i + kk
  end forall
end forall
!$omp end parallel workshare
if (any((c-a)/=(/5,5,5,5,5/))) print *,"fail"

if ( kk /= 5 ) print *,"fail"

print *,'pass'

end
