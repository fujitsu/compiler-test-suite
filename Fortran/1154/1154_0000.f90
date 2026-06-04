!$omp task default(none) private(iido,jjdo,kkdo,ierr1)
!$omp simd !private(ierr1)
do iido=1,1
do jjdo=1,1
ierr1=1
end do
end do
!$omp endsimd
!$omp endtask
print *,'pass'
end

