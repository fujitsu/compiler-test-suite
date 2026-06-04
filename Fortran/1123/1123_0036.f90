
program main
  real a(100,100)

!$omp simd collapse(2)
  do i=1,100
     do j=1,100
     enddo
  enddo

  i=i-1
!$omp simd collapse(2)
  do i=i,1,-1
     do j=j-100,100
        a(j,i) = 2
     enddo
  enddo
  write(6,*) (a(i,i),i=1,10)

  j=j-2
  i=(i-1)*10

!!$omp simd collapse(2)
  do i=1,i
     do j=1,i
        a(j,i) = 3
     enddo
  enddo
  write(6,*) (a(i,i),i=1,10)

  i=i-1
!!$omp simd collapse(2)
  do i=i,1,-1
     do j=i,100
        a(j,i) = 4
     enddo
  enddo
  write(6,*) (a(i,i),i=1,10)

end program main
