integer :: a,b,c,d
common/com/a,b,c,d
!$omp task firstprivate(/com/)
!$omp task firstprivate(a,b,c,d) 
  do i = 1,1
    a=b
    c=d
  end do
!$omp end task
!$omp end task
print *,'pass'
end
