i3=1
a=1
b=1
!$omp  parallel private(i3)
do j1=1,2
enddo
!$omp  sections
!$omp  section
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
!$omp  endsections
!$omp  endparallel
if( i3 .ne. 1) print *,'ng3', i3
print *,"pass"
end

