integer::i1=1, i2=1,i3=1, a=1, b=1
i3=1
a=1
b=1
!$omp  parallel
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
if( i3 .ne. 1) print *,'ng2'
print *,"pass"
end

