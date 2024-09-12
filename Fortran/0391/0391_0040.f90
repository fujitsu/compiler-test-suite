subroutine s1
integer,pointer:: a(:)
allocate(a(3))
a=0
do concurrent(i=lbound(a,1):ubound(a,1))
!$omp sections reduction(+:i)
 a(i)=a(i)+a(i)
!$omp end sections
end do
end
print *,'pass'
end
