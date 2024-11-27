integer ::a(100,100)
!$omp  do collapse(2)
do i=1,1
do j=1,1
end do
end do
!$omp end do 
print *,'pass'
end
