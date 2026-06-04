integer, target, dimension(10) :: a,b
integer, pointer, dimension(:) :: pa,pb

a=(/1,2,3,4,5,6,7,8,9,10/)
b=(/1,2,3,4,5,6,7,8,9,10/)

pa=>a
pb=>b
!$omp parallel workshare
forall (i=1:9)
  pa(i+1) = a(i)
  b(i+1) = pa(i) 
end forall
!$omp end parallel workshare
pa=>b

if (any(a/= (/1,1,2,3,4,5,6,7,8,9/))) print *,"fail"
if (any(pa/=(/1,1,1,2,3,4,5,6,7,8/))) print *,"fail"
if (any(b/= (/1,1,1,2,3,4,5,6,7,8/))) print *,"fail"
if (any(pb/=(/1,1,1,2,3,4,5,6,7,8/))) print *,"fail"
print *,'pass'
end
