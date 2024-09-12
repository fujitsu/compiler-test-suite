integer:: i3=1
integer:: i5=1
integer:: a=1
integer:: b=1
integer:: i1,i2,i4
!$omp  parallel
do j1=1,2
enddo
!$omp  sections
i3=2
!$omp  simd collapse(4)
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
!$omp  endsections
!$omp  endparallel
if( i3 .ne. 11) print *,'ng3-2'
if( i5 .ne. 1) print *,'ng5'
print *,"pass"
end

