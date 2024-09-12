integer,pointer:: a(:)
allocate(a(3))
a=0
do concurrent(i=lbound(a,1):ubound(a,1))
!$omp sections reduction(+:i)
!$omp task firstprivate(i)
 a(i+1)=a(i+1)+a(i+1)
!$omp end task 
!$omp end sections
end do
print *,'pass'
end
