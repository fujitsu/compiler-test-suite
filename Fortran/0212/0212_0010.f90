integer ::a(100,100)
!$omp  do collapse(1)
do i=1,1
end do
!$omp barrier
print *,'pass'
end
