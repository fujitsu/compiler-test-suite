i3=1
a=1
b=1
!$omp  parallel
!$omp  sections
!$omp  critical(k1)
!$omp  critical(k2)
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 do i4=1,10
 do i5=1,10
 b = b + a
 enddo
 enddo
 enddo
 enddo
 enddo
!$omp endsimd
!$omp  endcritical(k2)
!$omp  endcritical(k1)
!$omp  endsections
!$omp  endparallel
if( i3 .ne. 1) print *,'ng3'
print *,"pass"
end

