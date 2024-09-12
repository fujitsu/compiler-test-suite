b=1
a=1
k=1
k=k
!$omp  parallel
!$omp  sections
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp  paralleldo
do i4=1,1
k=1
end do
!$omp  endparalleldo
!$omp  endsections
!$omp  endparallel
print *,'pass'
end
