#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"

#define N 8192

program main
  real(kind=8),dimension(1:N) :: a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,res

  call init(a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,res)
     call test(a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,N)
  do i=1,N
     if(a1(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a2(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a3(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a4(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a5(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,res)
  real(kind=8),dimension(1:N) :: a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,res

  a1 = 0.
  a2 = 0.
  a3 = 0.
  a4 = 0.
  a5 = 0.
  res = 0.
  do i=1,N
     b1(i) = real(i,kind=8)
     b2(i) = real(i,kind=8)
     b3(i) = real(i,kind=8)
     b4(i) = real(i,kind=8)
     b5(i) = real(i,kind=8)
  enddo
  do i=3,N-100,100
     res(i) = b1(i-2) + b1(i+14) + b1(i+33) + b1(i+49) + b1(i+65) + b1(i+81) + b1(i+97)
  enddo
end subroutine init

subroutine test(a1,b1,a2,b2,a3,b3,a4,b4,a5,b5,n)
  real(kind=8),dimension(1:n) :: a1,b1,a2,b2,a3,b3,a4,b4,a5,b5

  do i=3,n-100,100
    a1(i) = b1(i-2) + b1(i+14) + b1(i+33) + b1(i+49) + b1(i+65) + b1(i+81) + b1(i+97)
    a2(i) = b2(i-2) + b2(i+14) + b2(i+33) + b2(i+49) + b2(i+65) + b2(i+81) + b2(i+97)
    a3(i) = b3(i-2) + b3(i+14) + b3(i+33) + b3(i+49) + b3(i+65) + b3(i+81) + b3(i+97)
    a4(i) = b4(i-2) + b4(i+14) + b4(i+33) + b4(i+49) + b4(i+65) + b4(i+81) + b4(i+97)
    a5(i) = b5(i-2) + b5(i+14) + b5(i+33) + b5(i+49) + b5(i+65) + b5(i+81) + b5(i+97)
  enddo

end subroutine test
