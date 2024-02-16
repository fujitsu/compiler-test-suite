#define N 512
#define CONST_DISTANCE 8

program main
  real(kind=2),dimension(N) :: a,b,res
  call init(a,b,res,N)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=2),dimension(1:n1) :: a,b,res
  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo
  do i=1,n1-1,CONST_DISTANCE
     b(i) = i
     b(i+1) = i
     res(i) = i
     res(i+1) = i
  enddo
end subroutine init

subroutine test(a,b)
  real(kind=2), dimension(N) :: a,b
  do i=1,N-1,CONST_DISTANCE
     a(i) = b(i)
     a(i+1) = b(i+1)
  enddo
end subroutine
