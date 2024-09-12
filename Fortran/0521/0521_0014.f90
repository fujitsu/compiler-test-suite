i3=1
a=1
b=1
!$omp  parallel
!$omp  sections
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
if( i3 .ne. 11) print *,'ng3'
!$omp  endsections
!$omp  endparallel
print *,"pass"
end

