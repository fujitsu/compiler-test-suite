i3=1
a=1
b=1
!$omp  parallel
do j1=1,2
enddo
!$omp  single
!$omp  critical(k1)
!$omp  critical(k2)
!$omp  critical(k3)
!$omp  critical(k4)
!$omp  critical(k5)
!$omp  critical(k6)
!$omp  critical(k7)
!$omp  critical(k8)
!$omp  critical(k9)
!$omp  critical(k10)
!$omp  critical(k11)
!$omp  critical(k12)
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
!$omp  endcritical(k12)
!$omp  endcritical(k11)
!$omp  endcritical(k10)
!$omp  endcritical(k9)
!$omp  endcritical(k8)
!$omp  endcritical(k7)
!$omp  endcritical(k6)
!$omp  endcritical(k5)
!$omp  endcritical(k4)
!$omp  endcritical(k3)
!$omp  endcritical(k2)
!$omp  endcritical(k1)
!$omp  endsingle
!$omp  endparallel
print *,"pass"
end

