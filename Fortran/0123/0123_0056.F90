#define N 256

program main
  real(kind=2),dimension(N) :: a,b,c,res
  call init(a,b,c,res,N)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,res,n1)
  real(kind=2),dimension(1:n1) :: a,b,c,res
  do i=1,n1
     a(i) = 0._8
     b(i) = real(i,kind=2)
     c(i) = real(i+1_2,kind=2)
     res(i) = real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,b,c)
  real(kind=2), dimension(N) :: a,b,c
  do i=1,N
     a(i) = min(b(i), c(i))
  enddo
end subroutine test
