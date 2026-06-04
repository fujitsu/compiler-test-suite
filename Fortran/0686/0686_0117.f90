integer, target, dimension(10) :: a,b=0
integer, pointer, dimension(:) :: p

!$omp parallel workshare
forall (i=1:10)
   a(i) = i
end forall
!$omp end parallel workshare
!$omp parallel workshare
forall (i=1:10:2)
  b(i) = a(i)
end forall
!$omp end parallel workshare
p=>b
!$omp parallel workshare
forall (i=1:9:2)
  p(i+1) = b(i)
end forall
!$omp end parallel workshare

if ( any(a/=(/1,2,3,4,5,6,7,8,9,10/)) ) print *,"fail"
if ( any(b/=(/1,1,3,3,5,5,7,7,9,9 /)) ) print *,"fail"
if ( any(p/=(/1,1,3,3,5,5,7,7,9,9 /)) ) print *,"fail"
print *,'pass'
end
