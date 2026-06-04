!$omp taskgroup
do i=1,10
end do
!$omp task
do j=1,10
end do
!$omp end task
!$omp end taskgroup
if(i/=11) print *,'err'
print *,'pass'
end program


     
