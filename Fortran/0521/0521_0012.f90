a=1
b=1
i3=1
!$omp single
!$omp  parallel
!$omp  sections
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
if (i3.ne.11) print *,'ng1'
!$omp  endsections
!$omp  endparallel
!$omp endsingle
if (i3.ne.1) print *,'ng2'



i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
if (i3.ne.11) print *,'ng3'
print *,'pass'
end
