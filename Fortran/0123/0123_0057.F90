#define N 256

program main
  real(kind=2),dimension(N) :: a,b,c,d,res
  call init(a,b,c,d,res)
  do i=1,2
     call test(a,b,c,d)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,d,res)
  real(kind=2),dimension(1:N) :: a,b,c,d,res
  do i=1,N
     a(i) = 0._8
     b(i) = 1._8
     c(i) = real(i,kind=2)
     d(i) = real(i,kind=2)
     res(i) = 0._8
  enddo
end subroutine init

subroutine test(a,b,c,d)
  real(kind=2), dimension(1:N) :: a,b,c,d
  do i=1,N
     a(i) = b(i) * c(i) - d(i)
  enddo
end subroutine test
