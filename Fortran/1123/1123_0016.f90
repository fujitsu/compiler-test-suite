
program main
  real*2 a(100,100)
  real*4 t
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
  t = a(1,100)
  write(6,*) t
  a(1,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=1,100,2
        a(j,i) = 2
     enddo
  enddo
  t = a(1,100)
  write(6,*) t
  a(1,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=1,100,n
        a(j,i) = 3
     enddo
  enddo
  t = a(1,100)
  write(6,*) t

  a(100,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=100,1,-1
        a(j,i) = 4
     enddo
  enddo
  t = a(100,100)
  write(6,*) t

  a(100,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=100,1,-2
        a(j,i) = 5
     enddo
  enddo
  t = a(100,100)
  write(6,*) t

  a(100,100)=0
!$omp simd collapse(2)
  do i=100,1,-2
     do j=100,1,-n
        a(j,i) = 6
     enddo
  enddo
  t = a(100,100)
  write(6,*) t

end program main
