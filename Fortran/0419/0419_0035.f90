real::s,a(:)
allocatable::a,s
s=0.0d0
a=[(i,i=1,100)]
!$omp parallel do reduction(+:s)
do i=1,100
s=s+a(i)
end do
!$omp end parallel do
if(s/=5050.) print *,'err'
print *,'pass'
end
