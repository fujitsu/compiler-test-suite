i3=1
a=1
b=1
!$omp  parallel
!$omp  sections
!$omp  simd collapse(2)
 do j1=1,10
 do j2=1,10
 b = b + a
 enddo
 enddo
!$omp  endsections
!$omp  sections
!$omp  critical(k1)
!$omp  critical(k2)
i3=2
!$omp  endcritical(k2)
!$omp  endcritical(k1)
!$omp  endsections
!$omp  do collapse(2)
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
!$omp end do
if( i3 .ne. 11) print *,'ng3'
!$omp  endparallel
print *,"pass"
end

