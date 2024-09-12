integer :: i1=1,i2=1, i3, a=1, b=1, j1=1
common /com/i3
i3=1
a=1
b=1
!$omp  parallel firstprivate(i4,/com/)
do j1=1,2
enddo
!$omp  critical
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
!$omp  endcritical
!$omp  endparallel
print *,"pass"
end

