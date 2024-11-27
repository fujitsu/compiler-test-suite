i3=1
a=1
b=1
!$omp  parallel
!$omp  task
do iii=1,1  
i3=2
!$omp  dosimd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp enddosimd
if( i3 .ne. 11) print *,'ng3'
end do
!$omp  end task
!$omp  endparallel
if( i3 .ne. 1) print *,'ng3'



i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
 !$omp end simd
if( i3 .ne. 11) print *,'ng3'
print *,"pass"
end

