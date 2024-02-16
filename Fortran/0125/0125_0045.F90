#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"

#define N 8192

program main
  real(kind=8),dimension(1:N) :: a1,b1,a2,b2,res

  call init(a1,b1,a2,b2,res)
     call test(a1,b1,a2,b2,N)
  do i=1,N
     if(a1(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a2(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a1,b1,a2,b2,res)
  real(kind=8),dimension(1:N) :: a1,b1,a2,b2,res

  a1 = 0.
  a2 = 0.
  res = 0.
  do i=1,N
     b1(i) = real(i,kind=8)
     b2(i) = real(i,kind=8)
  enddo
  do i=3,N-100,100
     res(i) = b1(i-2) + b1(i+14) + b1(i+33) + b1(i+49) + b1(i+65) + b1(i+81) + b1(i+97)
  enddo
end subroutine init

subroutine test(a1,b1,a2,b2,n)
  real(kind=8),dimension(1:n) :: a1,b1,a2,b2

  do i=3,n-100,100
    a1(i) = b1(i-2) + b1(i+14) + b1(i+33) + b1(i+49) + b1(i+65) + b1(i+81) + b1(i+97)
    a2(i) = b2(i-2) + b2(i+14) + b2(i+33) + b2(i+49) + b2(i+65) + b2(i+81) + b2(i+97)
  enddo

end subroutine test
