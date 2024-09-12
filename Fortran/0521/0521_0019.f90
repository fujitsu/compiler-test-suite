i3=1
a=1
b=1
!$omp  parallel do ordered
do kkk=1,1
!$omp ordered 
do iii=1,1  
i3=2
!$omp  simd collapse(2)
 do i1=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
!$omp endsimd
if( i3 .ne. 11) print *,'ng3'
end do
!$omp  end ordered
end do
!$omp  endparallel do
if( i3 .ne. 1) print *,'ng3'
print *,"pass"
end

