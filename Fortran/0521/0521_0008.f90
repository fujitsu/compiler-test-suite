b=1
a=1
!$omp  parallel
!$omp  sections
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp  endsections
!$omp  endparallel
print *,'pass'
end
