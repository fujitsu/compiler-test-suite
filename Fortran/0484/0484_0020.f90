implicit none 
integer:: i1=1, i2=1, i3=1, a=1, b=1
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
if( i3 .ne. 11)print *,i3
!$omp  endparallel
if( i3 .ne. 1)print *,i3



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
if( i3 .ne. 11)print *,i3

print *,"pass"
end

