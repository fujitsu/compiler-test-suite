integer :: i3=1
integer :: a=1
integer :: b=1

!$omp  parallel
i3=5
do j1=1,2
enddo
!$omp  parallel
!$omp  parallel
!$omp  parallel
!$omp  parallel
!$omp  parallel
!$omp  parallel
do j2=1,2
enddo
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
if( i3 .ne. 11) print *,'ng11'
!$omp  endparallel
if( i3 .ne. 5) print *,'ng', i3
!$omp  endparallel
if( i3 .ne. 5) print *,'ng1', i3
!$omp  endparallel
if( i3 .ne. 5) print *,'ng2', i3
!$omp  endparallel
if( i3 .ne. 5) print *,'ng3', i3
!$omp  endparallel
if( i3 .ne. 5) print *,'ng4', i3
!$omp  endparallel
if( i3 .ne. 5) print *,'ng5', i3
!$omp  endparallel
if( i3 .ne. 5) print *,'ng6', i3
print *,"pass"
end

