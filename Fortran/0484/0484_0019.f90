implicit none 
integer:: i1=1, i2=1, i3=1, a=1, b=0
i3=1
!$omp  parallel
i3=7
!$omp  critical
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp endsimd
!$omp  endcritical
!$omp  endparallel

i3=1
!$omp  parallel
i3=7
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp endsimd
if( i3 .ne. 11) print *,"ng2"
!$omp  endparallel
if( i3 .ne. 1) print *,"ng3"


i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
 !$omp end simd


print *,"pass"
end

