common /com/i4
i4=1
i5=1
a=1
b=1
!$omp  parallel private(i5,/com/)
do j1=1,2
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
enddo
!$omp  endparallel
if( i4 .ne. 1) print *,'ng2'
print *,"pass"
end

