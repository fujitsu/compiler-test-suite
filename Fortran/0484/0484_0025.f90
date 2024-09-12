integer:: j1, i3=1, i1=1, i2=1
!$omp  parallel
do j1=1,2
enddo
!$omp  workshare
i3=2
!$omp  endworkshare
!$omp  simd collapse(2)
   do i1=1,2
   do i2=1,2
   do i3=1,2
   enddo
   enddo
   enddo
!$omp endsimd
if( i3 .ne. 3) print *,'ng3'
!$omp  endparallel
if( i3 .ne. 1) print *,'ng3'
print *,"pass"
end

