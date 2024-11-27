j1=0
!$omp simd 
 do i1=1,1
 do i2=1,1
 do i3=1,1
!$omp simd 
 do i4=1,1
j1=1
 end do
!$omp end simd
 end do
 end do
 end do
!$omp end simd
if (j1.ne.0) print *,'ng'
print *,'pass'
end
