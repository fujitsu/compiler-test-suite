program simple
  implicit none
  integer::j=0
  integer,parameter:: N = 100
  integer::i=1, i1=1, i2=1, i3=1, i4=1, i5=1, a=1, b=1
!$omp do ordered
  do i=1, N
    j=j+1
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
  end do
!$omp end do
if(j==100) then
  print *, 'pass'
else
  print *, 'j=',j
endif
end program
