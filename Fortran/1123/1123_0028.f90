
program main
  real a(100,100)
  integer x(2)/1,-1/
  integer n

  n = x(1)
  a(1,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=1,100
        a(j,i) = 1
     enddo
  enddo
  write(6,*) a(1,100)
  a(1,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=1,100,2
        a(j,i) = 2
     enddo
  enddo
  write(6,*) a(1,100)
  a(1,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=1,100,n
        a(j,i) = 3
     enddo
  enddo
  write(6,*) a(1,100)

  a(100,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=100,1,-1
        a(j,i) = 4
     enddo
  enddo
  write(6,*) a(100,100)

  a(100,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=100,1,-2
        a(j,i) = 5
     enddo
  enddo
  write(6,*) a(100,100)

  a(100,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=100,1,-n
        a(j,i) = 6
     enddo
  enddo
  write(6,*) a(100,100)

end program main
