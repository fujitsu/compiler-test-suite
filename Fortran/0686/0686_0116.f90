integer, target, dimension(10) :: a
integer, pointer, dimension(:) :: p

!$omp parallel workshare
forall (i=1:10)
   a(i) = i
end forall
!$omp end parallel workshare

p=>a

!$omp parallel workshare
forall (i=1:9)
  p(i+1) = a(i)
end forall
!$omp end parallel workshare

if ( any(a/=(/1,1,2,3,4,5,6,7,8,9 /)) ) print *,"fail"
if ( any(p/=(/1,1,2,3,4,5,6,7,8,9 /)) ) print *,"fail"
print *,'pass'
end
